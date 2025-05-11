echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/Miguel-Hara/Premium-forward-bot Miguel-Hara/Premium-forward-bot 
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/Miguel-Hara/Premium-forward-bot -b $BRANCH /Premium-forward-bot
fi
cd Miguel-Hara/Premium-forward-bot 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
gunicorn app:app & python3 main.py
