-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Lower(`p`.`Taxonomy`)
FROM
	`Doctor` `p`
WHERE
	Lower(`p`.`Taxonomy`) = 'psychiatry'

