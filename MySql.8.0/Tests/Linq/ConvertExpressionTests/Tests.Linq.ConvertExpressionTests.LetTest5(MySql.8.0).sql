﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @take Int32
SET     @take = 1
DECLARE @take_1 Int32
SET     @take_1 = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Child` `c_1`
			WHERE
				`c_1`.`ParentID` = `p`.`ParentID` AND `c_1`.`ChildID` > -100
		)
			THEN 1
		ELSE 0
	END,
	(
		SELECT
			Count(*)
		FROM
			`Child` `c_2`
		WHERE
			`c_2`.`ParentID` = `p`.`ParentID` AND `c_2`.`ChildID` > -100
	),
	`t1`.`First1`,
	`t2`.`ParentID`,
	`t2`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN LATERAL (
			SELECT
				`c_3`.`ParentID` as `First1`
			FROM
				`Child` `c_3`
			WHERE
				`c_3`.`ParentID` = `p`.`ParentID` AND `c_3`.`ChildID` > -100 AND
				`c_3`.`ParentID` > 0
			ORDER BY
				`c_3`.`ChildID`
			LIMIT @take
		) `t1` ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				`c_4`.`ParentID`,
				`c_4`.`ChildID`
			FROM
				`Child` `c_4`
			WHERE
				`c_4`.`ParentID` = `p`.`ParentID` AND `c_4`.`ChildID` > -100
			ORDER BY
				`c_4`.`ChildID`
			LIMIT @take_1
		) `t2` ON 1=1

