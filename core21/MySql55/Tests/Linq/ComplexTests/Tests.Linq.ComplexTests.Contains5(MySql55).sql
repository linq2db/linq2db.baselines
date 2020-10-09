BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 100

SELECT 
	`c_1`.`ParentID`, 
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` IN (
		SELECT 
			`t1`.`ParentID`
		FROM
			( 
				SELECT 
					`p`.`ParentID`
				FROM
					`Parent` `p`
				LIMIT @skip,@take
			) `t1`
	)

