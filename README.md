# Welcome to the Ubuntu server setup guide

### Note: feel free to contact me at any time with any question

## FIRST STEP

At first you need to register (rent) VPS from any cloud provider or have your own Ubuntu driven PC.

## SECOND STEP 
You need to login on you server. If you are working with remote one you need to use SSH connection.

Q: How can I create ssh key
A: Follow the link below. My personal recomendation is to skip passphrase for SSH - it's less secury but easier to use

https://docs.gitlab.com/ee/user/ssh.html#generate-an-ssh-key-pair 


It would be much easier to follow guide and use server if you spend just few minutes by setuping `~/.ssh/config` on your client machine:

```
Host <as you wish: for example, server-1>
	Hostname <your domain name or ip address>
	User <username: for example, root>
	IdentityFile ~/.ssh/id_ed25519
```

After that you can use just `ssh server-1` and that's all*

* Of course you need to add your ssh key to the server

Q: HOW?
A: ssh-copy-id -i ~/.ssh/id_ed25519.pub YOUR_USER_NAME@IP_ADDRESS_OF_THE_SERVER

## THIRD STEP

```
git clone https://github.com/dmitriykara/scripts2.0
chmod -R +x scripts2.0
cd scripts2.0
```

And start executing scripts one by one
### PLEASE PAY ATTENTION TO THE COMMENTS, REALLY

## CONCLUSION

If you like the guide please contact me or leave feedback. I will be glad to hear constructive criticism and suggestions

###  See also:

#### NGINX:
https://www.nginx.com/blog/using-free-ssltls-certificates-from-lets-encrypt-with-nginx/
https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-20-04
