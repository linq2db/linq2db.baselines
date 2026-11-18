-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @name Int32
SET     @name = 4

SELECT
	`t`.`Id`,
	`t`.`Value`,
	`t`.`Money`
FROM
	`ParameterCastUnderCastTable` `t`
WHERE
	`t`.`Value` = CAST(@name AS CHAR(11))

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @name Int32
SET     @name = 4

SELECT
	`t`.`Id`,
	`t`.`Value`,
	`t`.`Money`
FROM
	`ParameterCastUnderCastTable` `t`
WHERE
	`t`.`Money` = CAST(@name AS DECIMAL(29, 10))

