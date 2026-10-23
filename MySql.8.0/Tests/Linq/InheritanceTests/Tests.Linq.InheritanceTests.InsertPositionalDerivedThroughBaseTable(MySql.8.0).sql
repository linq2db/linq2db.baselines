-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Code`,
	`t1`.`Value`
FROM
	`InheritanceFilterPositional` `t1`
LIMIT 2

