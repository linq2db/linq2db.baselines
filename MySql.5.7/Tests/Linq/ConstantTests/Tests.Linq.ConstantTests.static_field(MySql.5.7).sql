﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TestConstantsData`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `TestConstantsData`
(
	`Id`                INT           NOT NULL,
	`GuidValue`         CHAR(36)      NOT NULL,
	`GuidNullableValue` CHAR(36)          NULL,
	`StringValue`       VARCHAR(4000)     NULL,

	CONSTRAINT `PK_TestConstantsData` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `TestConstantsData`
(
	`Id`,
	`GuidValue`,
	`GuidNullableValue`,
	`StringValue`
)
VALUES
(1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11','bc7b663d-0fde-4327-8f92-5d8cc3a11d11','StrValue')

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @GuidNonReadonly Guid
SET     @GuidNonReadonly = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT
	`e`.`Id`,
	`e`.`GuidValue`,
	`e`.`GuidNullableValue`,
	`e`.`StringValue`
FROM
	`TestConstantsData` `e`
WHERE
	`e`.`GuidValue` = @GuidNonReadonly AND `e`.`GuidNullableValue` = @GuidNonReadonly

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`GuidValue`,
	`t1`.`GuidNullableValue`,
	`t1`.`StringValue`
FROM
	`TestConstantsData` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TestConstantsData`

