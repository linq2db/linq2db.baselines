-- MySql.5.7 MySql.5.7.MySql.Data MySql57
INSERT INTO `InheritanceFilterPositional`
(
	`Id`,
	`Code`,
	`Value`
)
VALUES
(
	1,
	1,
	42
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Code`,
	`t1`.`Value`
FROM
	`InheritanceFilterPositional` `t1`
LIMIT 2

