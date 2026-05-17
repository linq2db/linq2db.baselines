-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 100
DECLARE @CharColumn String -- AnsiStringFixedLength
SET     @CharColumn = NULL
DECLARE @NCharColumn String -- StringFixedLength
SET     @NCharColumn = NULL
DECLARE @VarCharColumn VarChar(5) -- AnsiString
SET     @VarCharColumn = 'Hello'
DECLARE @NVarCharColumn VarChar -- String
SET     @NVarCharColumn = NULL

INSERT INTO `StringTrimTable`
(
	`Id`,
	`CharColumn`,
	`NCharColumn`,
	`VarCharColumn`,
	`NVarCharColumn`
)
VALUES
(
	@Id,
	@CharColumn,
	@NCharColumn,
	@VarCharColumn,
	@NVarCharColumn
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	REGEXP_REPLACE(`t`.`VarCharColumn`, '(?-i)^[h]+', '')
FROM
	`StringTrimTable` `t`
WHERE
	`t`.`Id` = 100
LIMIT 2

