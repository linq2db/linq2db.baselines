BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`m_1`.`ParentID`,
	`d_1`.`Detail`
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `m_1`
		INNER JOIN (
			SELECT
				`d`.`ParentID` as `Detail`
			FROM
				`Child` `d`
			GROUP BY
				`d`.`ParentID`
		) `d_1` ON `m_1`.`ParentID` = `d_1`.`Detail`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

