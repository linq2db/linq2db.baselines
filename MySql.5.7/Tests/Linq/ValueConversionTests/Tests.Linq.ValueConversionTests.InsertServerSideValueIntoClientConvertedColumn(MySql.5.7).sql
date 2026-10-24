-- MySql.5.7 MySql.5.7.MySql.Data MySql57
INSERT INTO `Issue5975Row`
(
	`Id`,
	`Plain`,
	`Date`
)
VALUES
(
	1,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Plain`,
	`t1`.`Date`
FROM
	`Issue5975Row` `t1`
LIMIT 2

