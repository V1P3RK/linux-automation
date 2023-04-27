echo "Mise à jours des paquets en cours .."
echo " "
apt update -y
echo "Téléchargement et installation des paquets encours .."
echo " "
apt upgrade -y
echo "Mise à jour de distribution d'OS encours .."
echo " "
apt dist-upgrade -y
echo "Suppression des anciences paquets encours .."
echo " "
apt autoremove -y
echo "Rédemarrez votre Poste si besoin !"
echo " "
echo -n "Do you want to reboot machine? (y/n) \n"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    # Reboot machine
    sudo reboot
fi
