BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`author`.`Id`,
	`author`.`Name`
FROM
	`Authors` `author`
		INNER JOIN `Books` `book` ON `book`.`AuthorId` = `author`.`Id`

