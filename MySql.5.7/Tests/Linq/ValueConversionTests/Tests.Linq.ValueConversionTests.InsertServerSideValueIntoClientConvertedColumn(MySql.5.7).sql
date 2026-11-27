-- MySql.5.7 MySql.5.7.MySql.Data MySql57
INSERT INTO `ShiftedDateRow`
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
	`ShiftedDateRow` `t1`
LIMIT 2

