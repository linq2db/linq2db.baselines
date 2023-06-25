BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue681Table`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_Issue681Table` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 5

DELETE   `t1`
FROM
	`testdataconnector`.`Issue681Table` `t1`
WHERE
	`t1`.`ID` = @ID

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table`

