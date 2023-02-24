BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`        INT NOT NULL,
	`NullValue` INT     NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @_default Int32
SET     @_default = 0

SELECT
	`a`.`Id`,
	`a`.`NullValue`
FROM
	`SampleClass` `a`
WHERE
	(`a`.`Id` = 0 AND Coalesce(`a`.`NullValue`, @_default) = 0 OR `a`.`Id` = 1 AND Coalesce(`a`.`NullValue`, @_default) = 1 OR `a`.`Id` = 2 AND Coalesce(`a`.`NullValue`, @_default) = 2)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `SampleClass`

