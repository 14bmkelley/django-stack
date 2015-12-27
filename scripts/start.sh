# Switch to correct working directory
CURRENT_DIR=$(basename "$PWD")
if [ "$CURRENT_DIR" = "scripts" ]; then
  cd ../..
else
  if [ "$CURRENT_DIR" = "stack" ]; then
    cd ..
  else
    echo "Please execute from a different directory."
    exit 1
  fi
fi

python manage.py runserver

cd stack
rm *.pyc
