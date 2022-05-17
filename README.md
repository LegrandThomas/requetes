<p align="center">
    <img src="https://img.shields.io/badge/version-1.0.1-blue" />
</p>


## requêtes

1) films et date de sortie du plus récent au plus ancien :

    -SELECT  `title`, `release date` FROM `Movies` ORDER BY `release date`;
    
2) Nom, prénom, age acteurs de + de 30 ans par odre alphabétique:
    
    -SELECT first_name, last_name, (YEAR(NOW())) - YEAR (date_of_birth) AS AGE FROM actors HAVING AGE > 30 ORDER by AGE;
    
3)liste des acteurs pour un film donné:
 
    -SELECT `first_name`, `last_name` FROM actors INNER JOIN actor_movies ON actors.id = actor_movies.id_actors INNER JOIN Movies ON Movies.id  =actor_movies.id_movies WHERE Movies.title='thor';
    
4) liste des films pour un acteur donné:

    -SELECT `title` FROM Movies INNER JOIN actor_movies ON Movies.id = actor_movies.id_movies INNER JOIN actors ON actors.id = actor_movies.id_actors WHERE actors.first_name='Robert';
   
5) ajouter un film
  
      -INSERT INTO `Movies` (`id`, `title`, `release date`, `duration`, `director`, `creation date`, `update date`) VALUES (NULL, 'avengers15', '2022-05-27', '02:47:51', 'scorsese', '2022-05-16', '2022-05-16');
      
6) ajouter un acteur
    
       -INSERT INTO `actors` (`id`, `first_name`, `last_name`, `date of birth`, `release date`, `creation date`) VALUES (NULL, 'Thomas', 'Legrand', '1984-06-14', '2022-05-16', '2022-05-16');
       
7) modifier un film 

        -UPDATE `Movies` SET `id`=NULL,`title`='avengers15',`release date`='2022-05-27',`duration`='02:47:51',`director`='scorsese',`creation date`='2022-05-17',`update date`='2022-05-17';
        
 8)supprimer un acteur
 
    -DELETE FROM `actors` WHERE `first_name` = 'thomas'
    
 9) afficher les 3 derniers acteurs ajoutés:
 
    -SELECT * FROM actors ORDER BY id DESC LIMIT 3;

    

    modification Aurore 👍
    ```
    UPDATE Movies SET creation date='2022-05-17',update date=(NOW()) WHERE id ="40"
    DELETE FROM actors WHERE id = 29
    ```
    


