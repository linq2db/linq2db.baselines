-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t2`.`Sum_1`
FROM
	`Parent` `p`
		LEFT JOIN LATERAL (
			SELECT
				SUM(CASE
					WHEN `d`.`ParentID` IS NOT NULL THEN `d`.`ParentID`
					ELSE -100
				END) as `Sum_1`
			FROM
				(
					SELECT
						1 as `c1`
				) `t1`
					LEFT JOIN `Child` `d` ON `p`.`ParentID` = `d`.`ParentID`
		) `t2` ON 1=1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID`
		FROM
			`Parent` `t1`
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

