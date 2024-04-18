BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `StringTypesTable`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `StringTypesTable`
(
	`Id`             INT         NOT NULL,
	`CharColumn`     CHAR(50)        NULL,
	`NCharColumn`    CHAR(50)        NULL,
	`VarCharColumn`  VARCHAR(50)     NULL,
	`NVarCharColumn` VARCHAR(50)     NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `StringTypesTable`

