BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `OrderByDistinctData`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `OrderByDistinctData`
(
	`Id`            INT          NOT NULL,
	`DuplicateData` VARCHAR(255)     NULL,
	`OrderData1`    INT          NOT NULL,
	`OrderData2`    INT          NOT NULL,

	CONSTRAINT `PK_OrderByDistinctData` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `OrderByDistinctData`
(
	`Id`,
	`DuplicateData`,
	`OrderData1`,
	`OrderData2`
)
VALUES
(1,'One',1,1),
(10,'Two',1,1),
(100,'Three',1,1)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `OrderByDistinctData`

