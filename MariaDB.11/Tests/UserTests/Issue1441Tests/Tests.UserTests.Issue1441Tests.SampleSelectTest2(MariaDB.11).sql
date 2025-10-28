BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`author`.`Id`,
	`author`.`Name`
FROM
	`Authors` `author`
		INNER JOIN `Books` `book` ON `book`.`AuthorId` = `author`.`Id`

