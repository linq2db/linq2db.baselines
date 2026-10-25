-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @id Int32
SET     @id = 2

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
WHERE
	CAST(`p`.`ParentID` AS SIGNED) = @id

