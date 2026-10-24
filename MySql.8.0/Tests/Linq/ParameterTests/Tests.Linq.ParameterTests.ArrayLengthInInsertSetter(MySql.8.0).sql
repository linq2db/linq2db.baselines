-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @arr Int32
SET     @arr = 3

INSERT INTO `ArrayLengthTable`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	@arr
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`ArrayLengthTable` `t1`
LIMIT 2

