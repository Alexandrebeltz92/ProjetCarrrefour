<a name="readme-top"></a>

<h3 align="center">Carrefour Projet Alexandre</h3>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## 1. About The Project

Projet pour Carrefour - création d'une instance de base de données Postgresql sur Azure avec 3 bases de données et leurs users.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

* [![Terraform][Terraform.js]][Terraform-url]
* [![Ansible][Ansible.js]][Ansible-url]
* [![Grafana][Grafana.js]][Ansible-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## 2. Getting Started

Telechargez les fichiers depuis le repertoire.
Executez Terraform et ensuite Ansible.

### Prerequisites

* Azure
  ```sh
  1. Avoir un compte Azure.
  2. Assurez-vous que vous avez installé l'interface de ligne de commande Azure (Azure CLI) sur votre machine locale.
  3. Exécutez la commande "az login" dans le terminal ou l'invite de commandes. Cette commande ouvrira une fenêtre de navigateur pour vous permettre de  vous connecter à votre compte Azure. Si vous avez déjà ouvert une session dans votre navigateur, la commande "az login" utilisera automatiquement cette session.
  4. Suivez les instructions à l'écran pour vous connecter à votre compte Azure. Vous pouvez être invité à entrer votre adresse e-mail et votre mot de passe ou à utiliser une autre méthode d'authentification, telle qu'un code de sécurité.
  5. Après avoir réussi à vous connecter, la commande "az login" affichera une liste de toutes les souscriptions associées à votre compte Azure.
  6. Vous pouvez maintenant utiliser les commandes Azure CLI pour gérer vos ressources sur Azure.
  ```

* Terraform
  ```sh
  #Ajouter la clé GPG HashiCorp.
  curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
  
  #Ajouter le référentiel Linux officiel HashiCorp.
  sudo apt-add-repository \
  "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
  
  #Mettre à jour et installer
  sudo apt-get update && sudo apt-get install terraform
  ```

* Psycopg - PostgreSQL database adpater for Python
  ```sh
  pip install psycopg2
  ```

* Ansible
  ```sh
  #Installer Ansible
  sudo apt install ansible
  
  #Installer la colection community-postgresql pour faire fonctionner le projet
  ansible-galaxy collection install community-postgresql
  ```

* Grafana sous Ubuntu
  ```sh
  #Installer Grafana en local
  sudo apt-get install -y apt-transport-https
  sudo apt-get install -y software-properties-common wget
  wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
  echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
  sudo apt-get update
  sudo apt-get install grafana
  ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Installation

1. Cloner the repo
   ```sh
   git clone https://github.com/Alexandrebeltz92/ProjetCarrefour
   ```
2. Se rendre dans le repo Carrefour/Terraform
   ```sh
   cd Carrefour/Terraform/
   ```

3. (Optionel) Modifier le fichier provider.tf si besoin pour ajouter vos informations de connexion Azure

   
4. Terraform init
   ```sh
   Terraform init
   ```  
   
5. Terraform plan
   ```sh
   Terraform plan
   ```  

6. Terraform apply
   ```sh
   Terraform apply
   ```

7. Se rendre dans le repo Carrefour/Ansible 
   ```sh
   cd Ansible/
   ```

8. Executer le playbook Ansible
   ```sh
   ansible-playbook postgresConfig.yml
   ```

9. Rendez vous sur Grafana et configurer votre dashboard pour repondre à vos besoins
   ```sh
   localhost:3000
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->

[Terraform.js]: https://img.shields.io/badge/Terraform-%20-blueviolet?logo=Terraform
[Terraform-url]: https://www.terraform.io
[Ansible.js]: https://img.shields.io/badge/Ansible-%20-red?logo=Ansible
[Ansible-url]: https://www.ansible.com
[Grafana.js]: https://img.shields.io/badge/Grafana-%20-orange?logo=Grafana
[Grafana-url]: https://grafana.com
