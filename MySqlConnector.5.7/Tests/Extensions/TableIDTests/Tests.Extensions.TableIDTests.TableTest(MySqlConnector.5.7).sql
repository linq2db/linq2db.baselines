BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

