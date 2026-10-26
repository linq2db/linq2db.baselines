-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 2

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
WHERE
	CAST(`p`.`ParentID` AS SIGNED) = @id

