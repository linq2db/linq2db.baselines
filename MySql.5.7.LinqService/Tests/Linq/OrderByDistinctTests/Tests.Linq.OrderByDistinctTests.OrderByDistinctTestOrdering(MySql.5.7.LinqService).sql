BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `OrderByDistinctData`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `OrderByDistinctData`
(
	`Id`            INT           NOT NULL,
	`DuplicateData` VARCHAR(4000)     NULL,
	`OrderData1`    INT           NOT NULL,
	`OrderData2`    INT           NOT NULL,

	CONSTRAINT `PK_OrderByDistinctData` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int32
SET     @OrderData2 = 1

INSERT INTO `OrderByDistinctData`
(
	`Id`,
	`DuplicateData`,
	`OrderData1`,
	`OrderData2`
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 10
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int32
SET     @OrderData2 = 1

INSERT INTO `OrderByDistinctData`
(
	`Id`,
	`DuplicateData`,
	`OrderData1`,
	`OrderData2`
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 100
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int32
SET     @OrderData2 = 1

INSERT INTO `OrderByDistinctData`
(
	`Id`,
	`DuplicateData`,
	`OrderData1`,
	`OrderData2`
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `OrderByDistinctData`

