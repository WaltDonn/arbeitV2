docker build -t arbeit2 .

Run TTY: docker run -e port=8080 -t arbeit2 -m 300M --memory-swap 300M --oom-kill-disable

Run Background: docker run -e port=8080 -d arbeit2 -m 300M --memory-swap 300M --oom-kill-disable

Stop all: docker stop $(docker ps -aq)
Kill all: docker rm $(docker ps -aq)
