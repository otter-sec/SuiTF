screen -dmS challenge_server
screen -S challenge_server -X stuff "cd framework/chall && sui move build ; cd .. ; cargo r ; $(echo -ne '\015')"
screen -R challenge_server