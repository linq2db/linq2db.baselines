BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 3
DECLARE @take Int32
SET     @take = 1

SELECT 
	`p`.`ParentID`, 
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` > 1
LIMIT @skip,@take

