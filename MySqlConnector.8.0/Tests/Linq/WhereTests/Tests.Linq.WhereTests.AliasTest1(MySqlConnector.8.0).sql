-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @user Int32
SET     @user = 3

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = @user

