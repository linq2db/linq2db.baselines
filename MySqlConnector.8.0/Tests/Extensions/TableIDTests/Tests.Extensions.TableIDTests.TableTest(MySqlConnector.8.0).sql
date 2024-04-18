BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	'*** t1 ***',
	'*** `Parent` ***',
	'*** p.t1 ***'
FROM
	`Child` `c_1`
		INNER JOIN (
			SELECT
				`t1`.`ParentID`
			FROM
				`Parent` `t1`
		) `p` ON `c_1`.`ParentID` = `p`.`ParentID`
WHERE
	'*** t1 ***' = '*** `Parent` ***'

