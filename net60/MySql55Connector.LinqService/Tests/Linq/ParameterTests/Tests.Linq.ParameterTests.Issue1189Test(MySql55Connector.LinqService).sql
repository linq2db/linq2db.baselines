BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1189Customer`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1189Customer`
(
	`ID`   INT           NOT NULL,
	`NAME` VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_Issue1189Customer` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @DateTime Datetime -- DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT
	`k_1`.`ID`,
	`k_1`.`NAME`,
	@DateTime
FROM
	`Issue1189Customer` `k_1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1189Customer`

