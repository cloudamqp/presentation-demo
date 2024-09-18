# presentation-demo


## Install Crystal
In order to run these applications, you need to install the programming language Crystal. Please follow the instructions on the [official website](https://crystal-lang.org/install/)

#### For [Linux](https://crystal-lang.org/install/#:~:text=Source-,Linux,-Many%20Linux%20distribution)

#### For [Macos](https://crystal-lang.org/install/#:~:text=installing%20on%20Linux-,MacOS,-The%20Crystal%20project)

#### For [Windows](https://crystal-lang.org/install/#:~:text=installing%20on%20MacOS-,Windows,-(preview))


## Install the required dependencies for your app
(While standing in the same folder as your `shards.yml` file)

`shards install`

## Install LavinMQ

#### From source

Clone the git repository and build the project.

```sh
git clone git@github.com:cloudamqp/lavinmq.git
cd lavinmq
make
sudo make install # optional
```

Now, LavinMQ is ready to be used. You can check the version with:

```sh
lavinmq -v
```

Run LavinMQ with:
`lavinmq -D /var/lib/lavinmq`

#### For MacOS

```sh
brew install lavinmq
brew services list
brew services start laivnmq
```

To stop LaivnMQ: `brew services stop laivnmq`


#### For Linux(Ubuntu/Debian)
```sh
curl -fsSL https://packagecloud.io/cloudamqp/lavinmq/gpgkey | gpg --dearmor | sudo tee /usr/share/keyrings/lavinmq.gpg > /dev/null
. /etc/os-release
echo "deb [signed-by=/usr/share/keyrings/lavinmq.gpg] https://packagecloud.io/cloudamqp/lavinmq/$ID $VERSION_CODENAME main" | sudo tee /etc/apt/sources.list.d/lavinmq.list
sudo apt-get update
sudo apt-get install lavinmq
```

Run LavinMQ with:
`lavinmq -D /var/lib/lavinmq`

### Start LavinMQ 

Run LavinMQ with:
`lavinmq -D /var/lib/lavinmq`
