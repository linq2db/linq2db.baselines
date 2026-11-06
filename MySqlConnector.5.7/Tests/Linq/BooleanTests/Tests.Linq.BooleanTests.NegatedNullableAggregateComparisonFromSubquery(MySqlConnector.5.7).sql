-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
WHERE
	CASE
		WHEN (
			SELECT
				MAX(`a_Children`.`ChildID`)
			FROM
				`Child` `a_Children`
			WHERE
				`x`.`ParentID` = `a_Children`.`ParentID`
		) = 11
			THEN 0
		ELSE 1
	END

