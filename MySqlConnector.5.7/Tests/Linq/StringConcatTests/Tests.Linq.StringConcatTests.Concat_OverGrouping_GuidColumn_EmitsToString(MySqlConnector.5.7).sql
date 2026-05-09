-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`m_1`.`Key_1`,
	`d`.`GuidV`
FROM
	(
		SELECT DISTINCT
			`g_1`.`GrpId` as `Key_1`
		FROM
			`ConcatGroupedTypedEntity` `g_1`
	) `m_1`
		INNER JOIN `ConcatGroupedTypedEntity` `d` ON `m_1`.`Key_1` = `d`.`GrpId`
ORDER BY
	`d`.`PK`,
	`m_1`.`Key_1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT DISTINCT
	`g_1`.`GrpId`
FROM
	`ConcatGroupedTypedEntity` `g_1`
ORDER BY
	`g_1`.`GrpId`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`PK`,
	`t1`.`GrpId`,
	`t1`.`GuidV`,
	`t1`.`IntV`
FROM
	`ConcatGroupedTypedEntity` `t1`

