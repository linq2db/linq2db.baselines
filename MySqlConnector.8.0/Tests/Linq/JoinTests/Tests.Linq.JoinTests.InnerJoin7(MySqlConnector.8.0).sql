-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			`ch`.`ParentID` + `p`.`ParentID` as `c1`
		FROM
			`Child` `ch`
				INNER JOIN `Parent` `p` ON `ch`.`ParentID` = `p`.`ParentID`
	) `t`
WHERE
	`t`.`c1` > 2

