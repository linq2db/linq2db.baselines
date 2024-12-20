BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `StringTypesTable`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `StringTypesTable`
(
	`Id`             INT         NOT NULL,
	`CharColumn`     CHAR(50)        NULL,
	`NCharColumn`    CHAR(50)        NULL,
	`VarCharColumn`  VARCHAR(50)     NULL,
	`NVarCharColumn` VARCHAR(50)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @CharColumn String(10) -- AnsiStringFixedLength
SET     @CharColumn = 'someString'
DECLARE @NCharColumn String(10) -- StringFixedLength
SET     @NCharColumn = 'someString'
DECLARE @VarCharColumn VarChar(10) -- AnsiString
SET     @VarCharColumn = 'someString'
DECLARE @NVarCharColumn VarChar(10) -- String
SET     @NVarCharColumn = 'someString'

INSERT INTO `StringTypesTable`
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

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @str String(5) -- AnsiStringFixedLength
SET     @str = 'some%'
DECLARE @str_1 String(5) -- StringFixedLength
SET     @str_1 = 'some%'
DECLARE @str_2 VarChar(5) -- AnsiString
SET     @str_2 = 'some%'
DECLARE @str_3 VarChar(5) -- String
SET     @str_3 = 'some%'

SELECT
	`t`.`Id`,
	`t`.`CharColumn`,
	`t`.`NCharColumn`,
	`t`.`VarCharColumn`,
	`t`.`NVarCharColumn`
FROM
	`StringTypesTable` `t`
WHERE
	`t`.`CharColumn` LIKE @str ESCAPE '~' AND
	`t`.`NCharColumn` LIKE @str_1 ESCAPE '~' AND
	`t`.`VarCharColumn` LIKE @str_2 ESCAPE '~' AND
	`t`.`NVarCharColumn` LIKE @str_3 ESCAPE '~'

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `StringTypesTable`

