-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value UInt64
SET     @value = 1

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			CAST(@value AS UNSIGNED) as `Value_1`
		FROM
			`Person` `r`
	) `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value UInt64
SET     @value = 2147483648

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			CAST(@value AS UNSIGNED) as `Value_1`
		FROM
			`Person` `r`
	) `t1`

