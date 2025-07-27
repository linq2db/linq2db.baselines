BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value Decimal(1, 0)
SET     @value = CAST(1 AS DECIMAL(1))

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			@value as `Value_1`
		FROM
			`Person` `r`
	) `t1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value Decimal(10, 0)
SET     @value = CAST(2147483648 AS DECIMAL(10))

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			@value as `Value_1`
		FROM
			`Person` `r`
	) `t1`

