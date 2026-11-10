-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @suffix VarChar(3) -- String
SET     @suffix = 'Жук'
DECLARE @search VarChar(1) -- String
SET     @search = 'Ж'

SELECT
	`t`.`Id`,
	Replace(`t`.`VarCharColumn`, 'A', @suffix),
	Replace(`t`.`VarCharColumn`, 'A', @suffix),
	Replace(`t`.`VarCharColumn`, @search, '-')
FROM
	`StringTypesTable` `t`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`CharColumn`,
	`t1`.`NCharColumn`,
	`t1`.`VarCharColumn`,
	`t1`.`NVarCharColumn`
FROM
	`StringTypesTable` `t1`

