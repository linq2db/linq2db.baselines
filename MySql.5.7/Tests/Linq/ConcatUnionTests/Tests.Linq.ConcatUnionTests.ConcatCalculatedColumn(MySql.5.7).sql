-- MySql.5.7 MySql.5.7.MySql.Data MySql57
INSERT INTO `CalculatedColumnSetTable`
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Text`,
	CONCAT(Coalesce(`t1`.`FirstName`, ''), ' ', Coalesce(`t1`.`LastName`, ''))
FROM
	`CalculatedColumnSetTable` `t1`
UNION ALL
SELECT
	`t2`.`Id`,
	`t2`.`Text`,
	CONCAT(Coalesce(`t2`.`FirstName`, ''), ' ', Coalesce(`t2`.`LastName`, ''))
FROM
	`CalculatedColumnSetTable` `t2`

