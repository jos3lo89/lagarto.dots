### git ssh
- Generar una clave SSH
```bash
ssh-keygen -t rsa -b 4096 -C "tu_email@example.com"
```
- Agregar la clave SSH al agente
```bash
# zsh
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
# fish
eval (ssh-agent -c)
ssh-add ~/.ssh/id_rsa
```
- Agregar la clave pública a GitHub (copiar el contenido de ~/.ssh/id_rsa.pub y pegarlo en GitHub)
```bash
cat ~/.ssh/id_rsa.pub
```
- Probar la conexión SSH con GitHub
```bash
ssh -T git@github.com
```
