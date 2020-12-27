BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `OrderByDistinctData`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `OrderByDistinctData`
(
	`Id`            INT          NOT NULL,
	`DuplicateData` VARCHAR(255)     NULL,
	`OrderData1`    INT          NOT NULL,
	`OrderData2`    INT          NOT NULL,

	CONSTRAINT `PK_OrderByDistinctData` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
ORDER BY
	`x`.`OrderData1`
LIMIT @skip, @take

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
ORDER BY
	`x`.`OrderData1` DESC
LIMIT @skip, @take

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
ORDER BY
	`x`.`OrderData1`,
	`x`.`OrderData2`
LIMIT @skip, @take

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
ORDER BY
	`x`.`OrderData1`,
	`x`.`OrderData2` DESC
LIMIT @skip, @take

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
ORDER BY
	`x`.`OrderData1` DESC,
	`x`.`OrderData2` DESC
LIMIT @skip, @take

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
ORDER BY
	`x`.`OrderData1`,
	`x`.`OrderData2` DESC
LIMIT @skip, @take

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `OrderByDistinctData`

