-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`author`.`Id`,
	`author`.`Name`
FROM
	`JoinAuthors` `author`
		INNER JOIN `JoinBooks` `book` ON `book`.`AuthorId` = `author`.`Id`

