﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	CASE
		WHEN (NOT EXISTS(
			SELECT
				*
			FROM
				`GrandChild` `x`
			WHERE
				`x`.`ParentID` = 1 AND NOT (`x`.`ChildID` = 11 AND `x`.`GrandChildID` = 777)
		))
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	CASE
		WHEN (NOT EXISTS(
			SELECT
				*
			FROM
				`GrandChild` `x`
			WHERE
				`x`.`ParentID` = 1 AND NOT (`x`.`GrandChildID` = 777 AND `x`.`ChildID` = 11)
		))
			THEN 1
		ELSE 0
	END as `c1`

