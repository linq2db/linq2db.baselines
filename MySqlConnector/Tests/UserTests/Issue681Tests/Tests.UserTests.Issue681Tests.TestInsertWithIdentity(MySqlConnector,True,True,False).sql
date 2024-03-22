﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table4`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue681Table4`
(
	`ID`    INT AUTO_INCREMENT NOT NULL,
	`Value` INT                NOT NULL,

	CONSTRAINT `PK_Issue681Table4` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT 1

BeforeExecute
-- MySqlConnector MySql
DECLARE @Value Int32
SET     @Value = 10

INSERT INTO `testdataconnector`.`Issue681Table4`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table4`

