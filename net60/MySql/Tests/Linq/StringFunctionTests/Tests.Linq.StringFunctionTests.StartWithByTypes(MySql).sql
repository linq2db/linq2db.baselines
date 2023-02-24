BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `StringTypesTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `StringTypesTable`
(
	`Id`             INT         NOT NULL,
	`CharColumn`     CHAR(50)        NULL,
	`NCharColumn`    CHAR(50)        NULL,
	`VarCharColumn`  VARCHAR(50)     NULL,
	`NVarCharColumn` VARCHAR(50)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `StringTypesTable`
(
	`Id`,
	`CharColumn`,
	`NCharColumn`,
	`VarCharColumn`,
	`NVarCharColumn`
)
VALUES
(1,'someString','someString','someString','someString')

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @str_4 String(5) -- AnsiStringFixedLength
SET     @str_4 = 'some%'
DECLARE @str_5 String(5) -- StringFixedLength
SET     @str_5 = 'some%'
DECLARE @str_6 VarChar(5) -- AnsiString
SET     @str_6 = 'some%'
DECLARE @str_7 VarChar(5) -- String
SET     @str_7 = 'some%'

SELECT
	`t`.`Id`,
	`t`.`CharColumn`,
	`t`.`NCharColumn`,
	`t`.`VarCharColumn`,
	`t`.`NVarCharColumn`
FROM
	`StringTypesTable` `t`
WHERE
	`t`.`CharColumn` LIKE @str_4 ESCAPE '~' AND
	`t`.`NCharColumn` LIKE @str_5 ESCAPE '~' AND
	`t`.`VarCharColumn` LIKE @str_6 ESCAPE '~' AND
	`t`.`NVarCharColumn` LIKE @str_7 ESCAPE '~'

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `StringTypesTable`

