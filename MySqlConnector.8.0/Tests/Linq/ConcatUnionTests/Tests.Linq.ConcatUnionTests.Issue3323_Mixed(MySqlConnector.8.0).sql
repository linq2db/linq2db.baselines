-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue3323Table`
(
	`Id`,
	`FirstName`,
	`LastName`,
	`Text`
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`Id`,
	Concat(Coalesce(`r`.`FirstName`, ''), ' ', Coalesce(`r`.`LastName`, ''))
FROM
	`Issue3323Table` `r`
UNION ALL
SELECT
	`r_1`.`Id` + 1,
	`r_1`.`Text`
FROM
	`Issue3323Table` `r_1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`Id` + 1,
	`r`.`Text`
FROM
	`Issue3323Table` `r`
UNION ALL
SELECT
	`r_1`.`Id`,
	Concat(Coalesce(`r_1`.`FirstName`, ''), ' ', Coalesce(`r_1`.`LastName`, ''))
FROM
	`Issue3323Table` `r_1`

