-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `SomeTable`
(
	`Id`,
	`ClassProp`,
	`Interface`
)
VALUES
(
	1,
	1,
	0
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`ClassProp`,
	`t1`.`Interface`
FROM
	`SomeTable` `t1`
LIMIT 2

