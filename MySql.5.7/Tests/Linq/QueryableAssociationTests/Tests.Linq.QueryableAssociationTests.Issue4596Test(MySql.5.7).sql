﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4596Form`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue4596Form`
(
	`Id` INT  NOT NULL,
	`C1` CHAR NOT NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4596Item`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
			CASE
				WHEN `t1`.`C1` = 'T' THEN 1
				ELSE 0
			END as `cond`,
			CASE
				WHEN `t1`.`C1` <> 'T' THEN 1
				ELSE 0
			END as `cond_1`
		FROM
			`Issue4596Form` `t1`
		LIMIT 1
	) `m_1`,
	`Issue4596Item` `d`
WHERE
	`d`.`FormId` = `m_1`.`Id`
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`C1`,
	CASE
		WHEN `t1`.`C1` = 'T' THEN 1
		ELSE 0
	END,
	CASE
		WHEN `t1`.`C1` <> 'T' THEN 1
		ELSE 0
	END
FROM
	`Issue4596Form` `t1`
LIMIT 1

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4596Item`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4596Form`

