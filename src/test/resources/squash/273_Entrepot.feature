# Automation priority: null
# Automation status: TRANSMITTED
# Test case importance: LOW
Feature: Entrepot de données Personne
 
 
  Scenario: Creation
    Given Lentrepot contient N Personnes
    When Je cree une Personne
    Then Jobtiens lID de la Personne creee et lentrepot contient plus de N Personnes
 

  Scenario: Suppression
    Given Lentrepot contient la Personnes Anakin Skywalker
    When Je supprime la Personne 1
    Then Lentrepôt contient moins de N Personnes
 

  Scenario Outline: Lecture
    Given Lentrepot contient N Personnes
    When Je recupere la Personne <id>
    Then Jobtiens la Personne didentifiant <id> contenant les donnees <prenom>, <nom>, <naissance>
 
    Examples:
      | id | prenom | nom         | naissance |
      | 1  | Anakin | Skywalker   | 41.9 BBY  |
      | 2  | Luke   | Skywalker   | 19 BBY    |
      | 3  | Leia   | Organa Solo | 19 BBY    |
 

  Scenario Outline: Modification
    Given Lentrepot contient les Personnes suivantes
      | id | prenom | nom         | naissance |
      | 3  | Leia   | Organa Solo | 19 BBY    |
   When Je modifie la Personne <id> avec <nom>
    Then Jobtiens la Personne didentifiant <id> contenant les donnees <prenom>, <nom>, <naissance>
 
    Examples:
     | id | prenom | nom                   | naissance |
     | 3  | Leia   | Organa Solo Skywalker | 19 BBY    |