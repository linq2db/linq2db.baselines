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
(10,'Two',1,1),
(100,'Three',1,1)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
LIMIT @skip, @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
ORDER BY
	`x`.`OrderData1`
LIMIT @skip, @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
LIMIT @skip, @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
ORDER BY
	`x`.`OrderData1` DESC
LIMIT @skip, @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
LIMIT @skip, @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
ORDER BY
	`x`.`OrderData1`,
	`x`.`OrderData2`
LIMIT @skip, @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
LIMIT @skip, @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
ORDER BY
	`x`.`OrderData1`,
	`x`.`OrderData2` DESC
LIMIT @skip, @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
LIMIT @skip, @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
ORDER BY
	`x`.`OrderData1` DESC,
	`x`.`OrderData2` DESC
LIMIT @skip, @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
LIMIT @skip, @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
ORDER BY
	`x`.`OrderData1`,
	`x`.`OrderData2` DESC
LIMIT @skip, @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `OrderByDistinctData`

