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
	`t1`.`Id`,
	`t1`.`Text`,
	Concat(Coalesce(`t1`.`FirstName`, ''), ' ', Coalesce(`t1`.`LastName`, ''))
FROM
	`Issue3323Table` `t1`
UNION ALL
SELECT
	`t2`.`Id`,
	`t2`.`Text`,
	Concat(Coalesce(`t2`.`FirstName`, ''), ' ', Coalesce(`t2`.`LastName`, ''))
FROM
	`Issue3323Table` `t2`

