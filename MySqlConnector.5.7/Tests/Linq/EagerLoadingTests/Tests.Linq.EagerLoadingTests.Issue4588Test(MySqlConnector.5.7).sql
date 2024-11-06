﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Order`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Order`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `SubOrder`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `SubOrder`
(
	`Id`      INT NOT NULL,
	`OrderId` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `SubOrderDetail`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `SubOrderDetail`
(
	`Id`         INT           NOT NULL,
	`SubOrderId` INT           NOT NULL,
	`Code`       VARCHAR(4000)     NULL,
	`Date`       DATETIME      NOT NULL,
	`IsActive`   BOOLEAN       NOT NULL
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @skip Int32
SET     @skip = 100
DECLARE @take Int32
SET     @take = 10

SELECT
	`m_1`.`Id`,
	`m_1`.`Id_1`,
	`d_1`.`Id`,
	`d_1`.`SubOrderId`,
	`d_1`.`Code`,
	`d_1`.`Date`,
	`d_1`.`IsActive`
FROM
	(
		SELECT DISTINCT
			`d`.`Id`,
			`t2`.`Id` as `Id_1`
		FROM
			(
				SELECT DISTINCT
					`t1`.`Id`
				FROM
					(
						SELECT
							`x`.`Id`
						FROM
							`Order` `x`
						WHERE
							`x`.`Name` LIKE 'cat%' ESCAPE '~'
						ORDER BY
							`x`.`Id`
						LIMIT @skip, @take
					) `t1`
			) `t2`
				INNER JOIN `SubOrder` `d` ON `t2`.`Id` = `d`.`OrderId`
	) `m_1`
		INNER JOIN `SubOrderDetail` `d_1` ON `m_1`.`Id` = `d_1`.`SubOrderId`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @skip Int32
SET     @skip = 100
DECLARE @take Int32
SET     @take = 10

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`OrderId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			(
				SELECT
					`x`.`Id`
				FROM
					`Order` `x`
				WHERE
					`x`.`Name` LIKE 'cat%' ESCAPE '~'
				ORDER BY
					`x`.`Id`
				LIMIT @skip, @take
			) `t1`
	) `m_1`
		INNER JOIN `SubOrder` `d` ON `m_1`.`Id` = `d`.`OrderId`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @skip Int32
SET     @skip = 100
DECLARE @take Int32
SET     @take = 10

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Order` `x`
WHERE
	`x`.`Name` LIKE 'cat%' ESCAPE '~'
ORDER BY
	`x`.`Id`
LIMIT @skip, @take

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `SubOrderDetail`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `SubOrder`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Order`

