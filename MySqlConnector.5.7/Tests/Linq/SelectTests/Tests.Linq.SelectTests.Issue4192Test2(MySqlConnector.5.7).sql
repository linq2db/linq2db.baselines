BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4192TableNullable`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue4192TableNullable`
(
	`Name`     VARCHAR(4000)     NULL,
	`ParentId` INT               NULL
)

BeforeExecute
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

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4192TableNullable`

