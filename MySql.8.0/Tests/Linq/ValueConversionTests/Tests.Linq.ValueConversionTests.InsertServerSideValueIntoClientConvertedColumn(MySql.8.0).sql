-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Plain`,
	`t1`.`Date`
FROM
	`ShiftedDateRow` `t1`
LIMIT 2

