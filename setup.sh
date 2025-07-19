if [ "$#" -ne 1 ]; then
  echo "Usage: $0 PORT"
  exit 1
fi

PORT="$1"

if ! [[ "$PORT" =~ ^[0-9]+$ ]]; then
  echo "PORT must be a non-negative integer."
  exit 1
fi


kill -9 $(lsof -ti ":$PORT") 2>/dev/null
git pull
bundle config set --local path 'vendor/bundle'
bundle install
bin/rails db:migrate
bin/rails server -p "$PORT"
