BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`        INT NOT NULL,
	`NullValue` INT     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @default Int32
SET     @default = 0

SELECT
	`a`.`Id`,
	`a`.`NullValue`
FROM
	`SampleClass` `a`
WHERE
	(`a`.`Id` = 0 AND Coalesce(`a`.`NullValue`, @default) = 0 OR `a`.`Id` = 1 AND Coalesce(`a`.`NullValue`, @default) = 1 OR `a`.`Id` = 2 AND Coalesce(`a`.`NullValue`, @default) = 2)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `SampleClass`

