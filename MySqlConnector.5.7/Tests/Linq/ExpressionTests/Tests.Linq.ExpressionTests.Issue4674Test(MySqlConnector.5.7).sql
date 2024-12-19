BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4674StockItem`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue4674StockItem`
(
	`TenantId`    VARCHAR(4000)     NULL,
	`Code`        VARCHAR(4000)     NULL,
	`Description` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4674StockRoomItem`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue4674StockRoomItem`
(
	`TenantId`      VARCHAR(4000)       NULL,
	`StockroomCode` VARCHAR(4000)       NULL,
	`ItemCode`      VARCHAR(4000)       NULL,
	`Quantity`      DECIMAL(29, 10) NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4674StockRoomItem`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4674StockItem`

