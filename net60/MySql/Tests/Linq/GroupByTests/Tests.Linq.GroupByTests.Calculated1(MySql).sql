﻿BeforeExecute
BeginTransaction
BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Key_1`
FROM
	(
		SELECT
			CASE
				WHEN `selectParam`.`ParentID` > 2
					THEN CASE
					WHEN `selectParam`.`ParentID` > 3
						THEN '1'
					ELSE '2'
				END
				ELSE '3'
			END as `Key_1`
		FROM
			`Child` `selectParam`
	) `t1`
GROUP BY
	`t1`.`Key_1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @p_1 VarChar(1) -- String
SET     @p_1 = '1'

SELECT
	`selectParam`.`ParentID`,
	`selectParam`.`ChildID`
FROM
	`Child` `selectParam`
WHERE
	CASE
		WHEN `selectParam`.`ParentID` > 2
			THEN CASE
			WHEN `selectParam`.`ParentID` > 3
				THEN '1'
			ELSE '2'
		END
		ELSE '3'
	END = @p_1

