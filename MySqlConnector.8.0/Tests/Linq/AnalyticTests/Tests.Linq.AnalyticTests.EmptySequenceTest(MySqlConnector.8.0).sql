-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`m_1`.`ParentID`,
	`d_1`.`Key_1`,
	`d_1`.`ConcatStringsNullable`
FROM
	(
		SELECT DISTINCT
			`c_1`.`ParentID`
		FROM
			`Parent` `c_1`
	) `m_1`
		INNER JOIN LATERAL (
			SELECT
				`d`.`ParentID` as `Key_1`,
				GROUP_CONCAT(CAST(`d`.`ChildID` AS CHAR(11)) SEPARATOR ', ') as `ConcatStringsNullable`
			FROM
				`Child` `d`
			WHERE
				`m_1`.`ParentID` = `d`.`ParentID`
			GROUP BY
				`d`.`ParentID`
		) `d_1` ON 1=1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`c_1`.`ParentID`
FROM
	`Parent` `c_1`

