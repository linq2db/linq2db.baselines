BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4458Item`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue4458Item`
(
	`Id` VARCHAR(4000) NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id VarChar(1) -- String
SET     @Id = '1'

INSERT INTO `Issue4458Item`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id VarChar(1) -- String
SET     @Id = '2'

INSERT INTO `Issue4458Item`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id VarChar(1) -- String
SET     @Id = '3'

INSERT INTO `Issue4458Item`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `WarehouseStock`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `WarehouseStock`
(
	`ItemId`            VARCHAR(4000) NOT NULL,
	`QuantityAvailable` INT           NOT NULL,
	`WarehouseId`       VARCHAR(4000) NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ItemId VarChar(1) -- String
SET     @ItemId = '1'
DECLARE @QuantityAvailable Int32
SET     @QuantityAvailable = 10
DECLARE @WarehouseId VarChar(1) -- String
SET     @WarehouseId = 'A'

INSERT INTO `WarehouseStock`
(
	`ItemId`,
	`QuantityAvailable`,
	`WarehouseId`
)
VALUES
(
	@ItemId,
	@QuantityAvailable,
	@WarehouseId
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Review`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Review`
(
	`ItemId` VARCHAR(4000) NOT NULL,
	`UserId` VARCHAR(4000) NOT NULL,
	`Score`  INT           NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ItemId VarChar(1) -- String
SET     @ItemId = '1'
DECLARE @UserId VarChar(1) -- String
SET     @UserId = '1'
DECLARE @Score Int32
SET     @Score = 100

INSERT INTO `Review`
(
	`ItemId`,
	`UserId`,
	`Score`
)
VALUES
(
	@ItemId,
	@UserId,
	@Score
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ItemId VarChar(1) -- String
SET     @ItemId = '1'
DECLARE @UserId VarChar(1) -- String
SET     @UserId = '2'
DECLARE @Score Int32
SET     @Score = 90

INSERT INTO `Review`
(
	`ItemId`,
	`UserId`,
	`Score`
)
VALUES
(
	@ItemId,
	@UserId,
	@Score
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ItemId VarChar(1) -- String
SET     @ItemId = '2'
DECLARE @UserId VarChar(1) -- String
SET     @UserId = '1'
DECLARE @Score Int32
SET     @Score = 89

INSERT INTO `Review`
(
	`ItemId`,
	`UserId`,
	`Score`
)
VALUES
(
	@ItemId,
	@UserId,
	@Score
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ItemId VarChar(1) -- String
SET     @ItemId = '2'
DECLARE @UserId VarChar(1) -- String
SET     @UserId = '4'
DECLARE @Score Int32
SET     @Score = 93

INSERT INTO `Review`
(
	`ItemId`,
	`UserId`,
	`Score`
)
VALUES
(
	@ItemId,
	@UserId,
	@Score
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ItemId VarChar(1) -- String
SET     @ItemId = '3'
DECLARE @UserId VarChar(1) -- String
SET     @UserId = '5'
DECLARE @Score Int32
SET     @Score = 91

INSERT INTO `Review`
(
	`ItemId`,
	`UserId`,
	`Score`
)
VALUES
(
	@ItemId,
	@UserId,
	@Score
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`m_1`.`Id`,
	`d`.`ItemId`,
	`d`.`UserId`,
	`d`.`Score`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			`Issue4458Item` `t1`
		WHERE
			EXISTS(
				SELECT
					1
				FROM
					`Review` `r`
				WHERE
					`r`.`ItemId` = `t1`.`Id` AND `r`.`Score` > 95
			)
	) `m_1`
		INNER JOIN `Review` `d` ON `d`.`ItemId` = `m_1`.`Id`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`i`.`Id`,
	(
		SELECT
			SUM(`s`.`QuantityAvailable`)
		FROM
			`WarehouseStock` `s`
		WHERE
			`s`.`ItemId` = `i`.`Id` AND (
				SELECT
					`stock`.`ItemId`
				FROM
					`WarehouseStock` `stock`
				WHERE
					`stock`.`ItemId` = `i`.`Id`
				GROUP BY
					`stock`.`ItemId`
			) = `s`.`ItemId`
	)
FROM
	`Issue4458Item` `i`
WHERE
	EXISTS(
		SELECT
			1
		FROM
			`Review` `r`
		WHERE
			`r`.`ItemId` = `i`.`Id` AND `r`.`Score` > 95
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Review`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `WarehouseStock`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4458Item`

