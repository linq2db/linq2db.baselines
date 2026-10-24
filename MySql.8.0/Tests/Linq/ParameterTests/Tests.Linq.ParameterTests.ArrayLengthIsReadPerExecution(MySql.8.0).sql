-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @arr Int32
SET     @arr = 1

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`ArrayLengthTable` `t`
WHERE
	`t`.`Id` = @arr
LIMIT 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @arr Int32
SET     @arr = 2

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`ArrayLengthTable` `t`
WHERE
	`t`.`Id` = @arr
LIMIT 2

