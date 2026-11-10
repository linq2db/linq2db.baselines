-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @suffix VarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	`t`.`Id`,
	RTRIM(Replace(`t`.`CharColumn`, 'A', @suffix)),
	RTRIM(Replace(`t`.`CharColumn`, 'A', 'Ж'))
FROM
	`StringTypesTable` `t`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`CharColumn`,
	`t1`.`NCharColumn`,
	`t1`.`VarCharColumn`,
	`t1`.`NVarCharColumn`
FROM
	`StringTypesTable` `t1`

