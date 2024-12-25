BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4596Form`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue4596Form`
(
	`Id` INT  NOT NULL,
	`C1` CHAR NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4596Item`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue4596Item`
(
	`Id`         INT           NOT NULL,
	`FormId`     INT           NOT NULL,
	`OrderIndex` INT           NOT NULL,
	`Name1`      VARCHAR(4000)     NULL,
	`Name2`      VARCHAR(4000)     NULL,
	`Name3`      VARCHAR(4000)     NULL
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`m_1`.`Id`,
	`m_1`.`cond`,
	`m_1`.`cond_1`,
	`d`.`Id`,
	`d`.`FormId`,
	`d`.`OrderIndex`,
	`d`.`Name1`,
	`d`.`Name2`,
	`d`.`Name3`
FROM
	(
		SELECT
			`t1`.`Id`,
			`t1`.`C1` = 'T' as `cond`,
			`t1`.`C1` <> 'T' as `cond_1`
		FROM
			`Issue4596Form` `t1`
		LIMIT 1
	) `m_1`
		INNER JOIN `Issue4596Item` `d` ON `d`.`FormId` = `m_1`.`Id`
ORDER BY
	CASE
		WHEN `m_1`.`cond` THEN `d`.`OrderIndex`
		ELSE 0
	END,
	CASE
		WHEN `m_1`.`cond_1` THEN `d`.`Name1`
		ELSE ''
	END,
	CASE
		WHEN `m_1`.`cond_1` THEN `d`.`Name2`
		ELSE ''
	END,
	CASE
		WHEN `m_1`.`cond_1` THEN `d`.`Name3`
		ELSE ''
	END

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`C1`,
	`t1`.`C1` = 'T',
	`t1`.`C1` <> 'T'
FROM
	`Issue4596Form` `t1`
LIMIT 1

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4596Item`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4596Form`

