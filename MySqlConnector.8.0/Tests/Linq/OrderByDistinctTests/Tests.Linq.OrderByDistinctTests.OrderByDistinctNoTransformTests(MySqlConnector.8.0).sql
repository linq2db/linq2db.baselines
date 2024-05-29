BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `OrderByDistinctData`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `OrderByDistinctData`
(
	`Id`            INT           NOT NULL,
	`DuplicateData` VARCHAR(4000)     NULL,
	`OrderData1`    INT           NOT NULL,
	`OrderData2`    INT           NOT NULL,

	CONSTRAINT `PK_OrderByDistinctData` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `OrderByDistinctData`
(
	`Id`,
	`DuplicateData`,
	`OrderData1`,
	`OrderData2`
)
VALUES
(1,'One',1,1),
(2,'One',1,10),
(3,'One',2,2),
(4,'One',3,3),
(5,'One',4,4),
(6,'One',5,5),
(10,'Two',1,1),
(20,'Two',1,10),
(30,'Two',2,2),
(40,'Two',3,3),
(50,'Two',4,4),
(60,'Two',5,5),
(100,'Three',1,1),
(200,'Three',1,10),
(300,'Three',2,2),
(400,'Three',3,3),
(500,'Three',4,4),
(600,'Three',5,5)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`,
	`x`.`OrderData1`
FROM
	`OrderByDistinctData` `x`
ORDER BY
	`x`.`OrderData1`
LIMIT @skip, @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `OrderByDistinctData`

