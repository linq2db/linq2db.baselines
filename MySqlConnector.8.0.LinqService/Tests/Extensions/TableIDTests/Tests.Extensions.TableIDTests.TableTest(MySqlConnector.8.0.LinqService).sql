BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	Concat('*** p ***', '4'),
	'*** p ***',
	'*** `Parent` ***',
	'*** p_1.p ***'
FROM
	`Child` `c_1`
		INNER JOIN (
			SELECT
				`p`.`ParentID`
			FROM
				`Parent` `p`
		) `p_1` ON `c_1`.`ParentID` = `p_1`.`ParentID`
WHERE
	'*** p ***' = '*** `Parent` ***'

