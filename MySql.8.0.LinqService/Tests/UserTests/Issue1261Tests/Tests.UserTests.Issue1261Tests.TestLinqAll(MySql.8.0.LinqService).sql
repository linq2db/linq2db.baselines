BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

