# Projet Ecole Terraform

Ce projet a pour objectif de vous aider à maîtriser l'utilisation de Terraform avec le fournisseur Scaleway. Il vous permettra de créer des infrastructures simples en utilisant les commandes Terraform. Vous pourrez ainsi découvrir les fonctionnalités de Terraform et de Scaleway, et comprendre comment les utiliser pour créer et gérer des ressources dans le cloud.

## Prérequis 
- Avoir une compte Scaleway avec des informations d'identification valides.
- Avoir Terraform installé sur votre machine locale.

## Mise en route
1. Clonez ce dépôt sur votre machine locale.
2. Exécutez la commande `terraform init` pour initialiser le projet et télécharger les plugins de fournisseur nécessaires.
3. Exécutez `terraform plan` pour voir l'infrastructure qui sera créée.
4. Exécutez `terraform apply` pour créer l'infrastructure.
5. Utilisez les commandes `terraform show`, `terraform state list` pour avoir des informations sur les ressources crées.
6. Utilisez les commandes `terraform destroy` pour supprimer les ressources crées.

## Utilisation du fournisseur Scaleway

Le fournisseur Scaleway est utilisé pour interagir avec l'API Scaleway et créer des ressources telles que des serveurs et des équilibreurs de charge. Vous devrez configurer le fournisseur avec vos informations d'identification API Scaleway avant d'exécuter les commandes Terraform. Ces informations se trouvent dans le fichier `provider.tf`.

## Note

Il s'agit d'un projet scolaire et ne doit pas être utilisé pour des environnements de production. Il est conseillé de ne pas utiliser vos informations d'identification réelles pour éviter tout dommage. Il est également conseillé de vérifier les coûts associés à chaque ressource créée, et de les supprimer si nécessaire pour éviter les frais inutiles.

## Ressources
- Terraform : https://www.terraform.io/
- Scaleway : https://www.scaleway.com/
- Documentation API Scaleway : https://developer.scaleway.com/
