-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id Int32
SET     @id = 2

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
WHERE
	CAST(`p`.`ParentID` AS SIGNED) = @id

