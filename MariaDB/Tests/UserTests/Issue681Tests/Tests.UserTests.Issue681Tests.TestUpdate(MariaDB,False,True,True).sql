﻿BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue681Table`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_Issue681Table` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT 1

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Value Int32
SET     @Value = 10
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	`testdata`.`Issue681Table` `t1`
SET
	`t1`.`Value` = @Value
WHERE
	`t1`.`ID` = @ID

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table`

