﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @take Int32
SET     @take = 1

SELECT
	`lw_Issue3975TestClass`.`ParentID`,
	`detail`.`ParentID`,
	`detail`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`t2`.`ParentID`
		FROM
			(
				SELECT
					`t1`.`ParentID`
				FROM
					`Parent` `t1`
				LIMIT @take
			) `t2`
	) `lw_Issue3975TestClass`
		INNER JOIN `Child` `detail` ON `lw_Issue3975TestClass`.`ParentID` = `detail`.`ParentID`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @take Int32
SET     @take = 1

SELECT
	`t1`.`ParentID`
FROM
	`Parent` `t1`
LIMIT @take

