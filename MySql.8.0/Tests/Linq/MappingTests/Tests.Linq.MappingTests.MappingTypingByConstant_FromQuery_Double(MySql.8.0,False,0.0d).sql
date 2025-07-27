BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value Double
SET     @value = CAST(0 AS DOUBLE)

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
DECLARE @value Double
SET     @value = CAST(3147483648 AS DOUBLE)

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

