BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4674StockItem`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue4674StockItem`
(
	`TenantId`    VARCHAR(4000)     NULL,
	`Code`        VARCHAR(4000)     NULL,
	`Description` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4674StockRoomItem`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue4674StockRoomItem`
(
	`TenantId`      VARCHAR(4000)       NULL,
	`StockroomCode` VARCHAR(4000)       NULL,
	`ItemCode`      VARCHAR(4000)       NULL,
	`Quantity`      DECIMAL(29, 10) NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4674StockRoomItem`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4674StockItem`

