-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`p`.`Id`,
	`p`.`MyEnum`,
	`p`.`MyEnum2`
FROM
	`EnumFilterEntity` `p`
WHERE
	`p`.`MyEnum2` <> 0

