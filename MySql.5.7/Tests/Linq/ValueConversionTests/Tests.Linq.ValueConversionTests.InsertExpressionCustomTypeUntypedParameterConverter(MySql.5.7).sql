-- MySql.5.7 MySql.5.7.MySql.Data MySql57
INSERT INTO `CustomFieldRecord`
(
	`Id`,
	`Field1`
)
VALUES
(
	1,
	NULL
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
INSERT INTO `CustomFieldRecord`
(
	`Id`,
	`Field1`
)
VALUES
(
	2,
	NULL
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
INSERT INTO `CustomFieldRecord`
(
	`Id`,
	`Field1`
)
VALUES
(
	3,
	'test'
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Field1`
FROM
	`CustomFieldRecord` `t1`
ORDER BY
	`t1`.`Id`

