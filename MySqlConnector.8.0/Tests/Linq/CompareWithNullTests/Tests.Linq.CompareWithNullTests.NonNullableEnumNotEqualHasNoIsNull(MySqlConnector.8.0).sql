-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`p`.`Id`,
	`p`.`MyEnum`,
	`p`.`MyEnum2`
FROM
	`EnumFilterEntity` `p`
WHERE
	`p`.`MyEnum2` <> 0

