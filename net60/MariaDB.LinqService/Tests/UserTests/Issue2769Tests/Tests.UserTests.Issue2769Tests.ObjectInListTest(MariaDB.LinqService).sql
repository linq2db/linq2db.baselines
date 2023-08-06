BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`        INT NOT NULL,
	`NullValue` INT     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @default Int32
SET     @default = 0
DECLARE @default_1 Int32
SET     @default_1 = 0
DECLARE @default_2 Int32
SET     @default_2 = 0

SELECT
	`a`.`Id`,
	`a`.`NullValue`
FROM
	`SampleClass` `a`
WHERE
	(`a`.`Id` = 0 AND Coalesce(`a`.`NullValue`, @default) = 0 OR `a`.`Id` = 1 AND Coalesce(`a`.`NullValue`, @default_1) = 1 OR `a`.`Id` = 2 AND Coalesce(`a`.`NullValue`, @default_2) = 2)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

