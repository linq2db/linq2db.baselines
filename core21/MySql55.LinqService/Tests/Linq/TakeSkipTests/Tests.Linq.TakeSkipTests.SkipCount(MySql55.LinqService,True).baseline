BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 2

SELECT
	Count(*)
FROM
	(
		SELECT
			`t1`.`ParentID`,
			`t1`.`ChildID`
		FROM
			`Child` `t1`
		LIMIT @skip,9223372036854775807
	) `t2`

