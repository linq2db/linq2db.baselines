﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				`GrandChild` `x`
			WHERE
				`x`.`ParentID` = 1 AND `x`.`ParentID` IS NOT NULL AND
				NOT (`x`.`ChildID` = 11 AND `x`.`ChildID` IS NOT NULL AND `x`.`GrandChildID` = 777 AND `x`.`GrandChildID` IS NOT NULL)
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				`GrandChild` `x`
			WHERE
				`x`.`ParentID` = 1 AND `x`.`ParentID` IS NOT NULL AND
				NOT (`x`.`GrandChildID` = 777 AND `x`.`GrandChildID` IS NOT NULL AND `x`.`ChildID` = 11 AND `x`.`ChildID` IS NOT NULL)
		)
			THEN 1
		ELSE 0
	END as `c1`

