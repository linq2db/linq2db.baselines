-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`author`.`Id`,
	`author`.`Name`
FROM
	`JoinAuthors` `author`
		INNER JOIN `JoinBooks` `book` ON `book`.`AuthorId` = `author`.`Id`

