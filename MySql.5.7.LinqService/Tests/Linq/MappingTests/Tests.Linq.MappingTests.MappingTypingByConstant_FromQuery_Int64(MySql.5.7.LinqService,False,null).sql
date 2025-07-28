BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value Int64
SET     @value = NULL

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			CAST(@value AS SIGNED) as `Value_1`
		FROM
			`Person` `r`
	) `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value Int64
SET     @value = 2147483648

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			CAST(@value AS SIGNED) as `Value_1`
		FROM
			`Person` `r`
	) `t1`

