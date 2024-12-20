BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4674StockItem`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue4674StockItem`
(
	`TenantId`    VARCHAR(4000)     NULL,
	`Code`        VARCHAR(4000)     NULL,
	`Description` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4674StockRoomItem`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue4674StockRoomItem`
(
	`TenantId`      VARCHAR(4000)       NULL,
	`StockroomCode` VARCHAR(4000)       NULL,
	`ItemCode`      VARCHAR(4000)       NULL,
	`Quantity`      DECIMAL(29, 10) NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4674StockRoomItem`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4674StockItem`

