-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`author`.`Id`,
	`author`.`Name`
FROM
	`Authors` `author`
		INNER JOIN `Books` `book` ON `book`.`AuthorId` = `author`.`Id`

