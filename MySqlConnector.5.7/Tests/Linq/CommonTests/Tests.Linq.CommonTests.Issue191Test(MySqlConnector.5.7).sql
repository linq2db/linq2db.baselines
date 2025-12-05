-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`user_1`.`Id`,
	`user_1`.`FirstName`,
	`user_1`.`Status`
FROM
	`User` `user_1`
WHERE
	`user_1`.`Status` IS NULL

