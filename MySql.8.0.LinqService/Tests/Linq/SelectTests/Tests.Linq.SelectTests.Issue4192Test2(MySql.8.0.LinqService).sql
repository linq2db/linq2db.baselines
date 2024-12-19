BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4192TableNullable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue4192TableNullable`
(
	`Name`     VARCHAR(4000)     NULL,
	`ParentId` INT               NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4192TableNullable`

