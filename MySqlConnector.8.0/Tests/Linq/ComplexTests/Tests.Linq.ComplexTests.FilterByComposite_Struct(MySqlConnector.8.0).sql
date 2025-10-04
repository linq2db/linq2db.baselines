BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`u`.`Id`,
	`u`.`user_name`,
	`u`.`city`,
	`u`.`street`,
	`u`.`building_number`
FROM
	`UserStruct` `u`
WHERE
	`u`.`city` = 'Springwood' AND `u`.`street` = 'Elm Street' AND
	`u`.`building_number` = 13
LIMIT 2

