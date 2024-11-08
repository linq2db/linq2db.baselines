BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4192TableNotNullable`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue4192TableNotNullable`
(
	`Name`     VARCHAR(4000)     NULL,
	`ParentId` INT           NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @parentId Int32
SET     @parentId = 12

SELECT
	`i`.`Name`,
	`i`.`ParentId`
FROM
	`Issue4192TableNotNullable` `i`
WHERE
	`i`.`ParentId` = @parentId

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4192TableNotNullable`

