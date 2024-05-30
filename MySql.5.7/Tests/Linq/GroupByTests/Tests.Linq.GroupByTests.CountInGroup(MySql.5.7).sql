BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `AggregationData`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `AggregationData`
(
	`GroupId`   INT    NOT NULL,
	`DataValue` DOUBLE     NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(1,1),
(1,NULL),
(1,3),
(1,1),
(1,5),
(1,6),
(2,7),
(2,8),
(2,9),
(2,NULL),
(2,11),
(2,7),
(3,13),
(3,16),
(3,16),
(3,16),
(3,NULL),
(3,18)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`GroupId`,
	`d_1`.`DataValue`
FROM
	(
		SELECT DISTINCT
			`t`.`GroupId`
		FROM
			`AggregationData` `t`
		WHERE
			`t`.`DataValue` IS NOT NULL
	) `m_1`
		INNER JOIN (
			SELECT DISTINCT
				`d`.`DataValue`,
				`d`.`GroupId`
			FROM
				`AggregationData` `d`
			WHERE
				`d`.`DataValue` IS NOT NULL
		) `d_1` ON `m_1`.`GroupId` = `d_1`.`GroupId`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`GroupId`,
	`d_1`.`DataValue`
FROM
	(
		SELECT DISTINCT
			`t`.`GroupId`
		FROM
			`AggregationData` `t`
		WHERE
			`t`.`DataValue` IS NOT NULL
	) `m_1`
		INNER JOIN (
			SELECT DISTINCT
				`d`.`DataValue`,
				`d`.`GroupId`
			FROM
				`AggregationData` `d`
			WHERE
				`d`.`DataValue` IS NOT NULL AND `d`.`DataValue` % 2 = 0
		) `d_1` ON `m_1`.`GroupId` = `d_1`.`GroupId`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`GroupId`,
	`d_1`.`DataValue`
FROM
	(
		SELECT DISTINCT
			`t`.`GroupId`
		FROM
			`AggregationData` `t`
		WHERE
			`t`.`DataValue` IS NOT NULL
	) `m_1`
		INNER JOIN (
			SELECT DISTINCT
				`d`.`DataValue`,
				`d`.`GroupId`
			FROM
				`AggregationData` `d`
			WHERE
				`d`.`DataValue` IS NOT NULL AND `d`.`DataValue` % 2 = 0
		) `d_1` ON `m_1`.`GroupId` = `d_1`.`GroupId`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`g_1`.`GroupId`,
	COUNT(*),
	COUNT(CASE
		WHEN `g_1`.`DataValue` % 2 = 0 THEN 1
		ELSE NULL
	END),
	COUNT(*),
	COUNT(DISTINCT `g_1`.`DataValue`),
	COUNT(CASE
		WHEN `g_1`.`DataValue` % 2 = 0 THEN 1
		ELSE NULL
	END)
FROM
	`AggregationData` `g_1`
WHERE
	`g_1`.`DataValue` IS NOT NULL
GROUP BY
	`g_1`.`GroupId`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`GroupId`,
	`t1`.`DataValue`
FROM
	`AggregationData` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `AggregationData`

