-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @suffix VarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	`t`.`Id`,
	CASE
		WHEN (CONCAT(Coalesce(`t`.`VarCharColumn`, ''), Coalesce(@suffix, ''))) > `t`.`NVarCharColumn` OR `t`.`NVarCharColumn` IS NULL
			THEN 1
		WHEN (CONCAT(Coalesce(`t`.`VarCharColumn`, ''), Coalesce(@suffix, ''))) = `t`.`NVarCharColumn`
			THEN 0
		ELSE -1
	END,
	RTRIM(CONCAT(Coalesce(`t`.`VarCharColumn`, ''), Coalesce(@suffix, '')))
FROM
	`StringTypesTable` `t`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`CharColumn`,
	`t1`.`NCharColumn`,
	`t1`.`VarCharColumn`,
	`t1`.`NVarCharColumn`
FROM
	`StringTypesTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @suffix VarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	`t`.`Id`
FROM
	`StringTypesTable` `t`
WHERE
	(CONCAT(Coalesce(`t`.`VarCharColumn`, ''), Coalesce(@suffix, ''))) LIKE `t`.`NVarCharColumn`

