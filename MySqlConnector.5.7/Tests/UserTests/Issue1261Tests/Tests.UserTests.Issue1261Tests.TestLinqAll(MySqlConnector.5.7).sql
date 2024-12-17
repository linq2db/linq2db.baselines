BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN  NOT EXISTS (
			SELECT
				*
			FROM
				`GrandChild` `x`
			WHERE
				`x`.`ParentID` = 1 AND NOT (`x`.`ChildID` = 11 AND `x`.`GrandChildID` = 777)
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN  NOT EXISTS (
			SELECT
				*
			FROM
				`GrandChild` `x`
			WHERE
				`x`.`ParentID` = 1 AND NOT (`x`.`GrandChildID` = 777 AND `x`.`ChildID` = 11)
		)
			THEN 1
		ELSE 0
	END as `c1`

