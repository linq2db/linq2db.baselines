BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`e`.`Id`,
	`a_ObjectBOptional`.`Id`,
	`a_ObjectBOptional`.`Id`,
	`a_ObjectCRequired`.`Id`,
	`a_ObjectCRequired`.`FK`
FROM
	`EntityA` `e`
		LEFT JOIN `EntityB` `a_ObjectBOptional` ON `e`.`FK` = `a_ObjectBOptional`.`Id`
		LEFT JOIN `EntityC` `a_ObjectCRequired` ON `a_ObjectBOptional`.`FK` = `a_ObjectCRequired`.`Id`

