-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @parentId Int32
SET     @parentId = 12

SELECT
	`i`.`Name`,
	`i`.`ParentId`
FROM
	`Issue4192TableNullable` `i`
WHERE
	`i`.`ParentId` = @parentId

