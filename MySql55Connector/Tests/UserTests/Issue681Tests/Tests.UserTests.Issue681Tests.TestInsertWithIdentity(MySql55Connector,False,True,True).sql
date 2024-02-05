BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table4`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue681Table4`
(
	`ID`    INT AUTO_INCREMENT NOT NULL,
	`Value` INT                NOT NULL,

	CONSTRAINT `PK_Issue681Table4` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MySql55Connector MySqlConnector MySql
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
-- MySql55Connector MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table4`

