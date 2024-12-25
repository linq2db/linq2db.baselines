BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			`GrandChild` `x`
		WHERE
			`x`.`ParentID` = 1 AND NOT (`x`.`ChildID` = 11 AND `x`.`GrandChildID` = 777)
	) as `c1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			`GrandChild` `x`
		WHERE
			`x`.`ParentID` = 1 AND NOT (`x`.`GrandChildID` = 777 AND `x`.`ChildID` = 11)
	) as `c1`

