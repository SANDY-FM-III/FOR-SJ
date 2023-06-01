if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SANDY-FM-III/FOR-SJ /FOR-SJ
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FOR-SJ
fi
cd /FOR-SJ
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
