BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Issue3323Table`
(
	`Id`,
	`FistName`,
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

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Text`,
	Concat(`t1`.`FistName`, ' ', `t1`.`LastName`)
FROM
	`Issue3323Table` `t1`
UNION ALL
SELECT
	`t2`.`Id`,
	`t2`.`Text`,
	Concat(`t2`.`FistName`, ' ', `t2`.`LastName`)
FROM
	`Issue3323Table` `t2`

