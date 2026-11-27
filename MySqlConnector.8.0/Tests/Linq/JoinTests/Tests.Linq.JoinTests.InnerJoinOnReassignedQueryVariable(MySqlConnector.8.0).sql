-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`author`.`Id`,
	`author`.`Name`
FROM
	`JoinAuthors` `author`
		INNER JOIN `JoinBooks` `book` ON `book`.`AuthorId` = `author`.`Id`

