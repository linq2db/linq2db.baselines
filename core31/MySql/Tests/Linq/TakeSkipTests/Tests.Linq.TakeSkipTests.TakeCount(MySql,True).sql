BeforeExecute
-- MySql MySql.Official MySql
DECLARE @take Int32
SET     @take = 5

SELECT
	Count(*)
FROM
	(
		SELECT
			`t1`.`ChildID`
		FROM
			`Child` `t1`
		LIMIT @take
	) `t2`

