BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @parentId Int32
SET     @parentId = 12

SELECT
	`i`.`Id`,
	`i`.`Name`,
	`i`.`ParentId`
FROM
	`Issue4192TableNullable` `i`
WHERE
	`i`.`ParentId` = @parentId

