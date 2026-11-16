-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Female'

SELECT
	`r`.`Id`
FROM
	`ConvertedGenderRow` `r`
WHERE
	`r`.`Gender` = @Value

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Gender`
FROM
	`ConvertedGenderRow` `t1`

