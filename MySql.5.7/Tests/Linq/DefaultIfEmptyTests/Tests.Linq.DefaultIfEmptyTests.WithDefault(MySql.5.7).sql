-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @take Int32
SET     @take = 0

SELECT
	`d`.`cond`,
	`d`.`ChildID`
FROM
	(
		SELECT
			1 as `c1`
	) `t2`
		LEFT JOIN (
			SELECT
				`t1`.`ParentID` as `cond`,
				`t1`.`ChildID`
			FROM
				`Child` `t1`
			LIMIT @take
		) `d` ON 1=1

