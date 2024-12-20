BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `TestConstantsData`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `TestConstantsData`
(
	`Id`                INT           NOT NULL,
	`GuidValue`         CHAR(36)      NOT NULL,
	`GuidNullableValue` CHAR(36)          NULL,
	`StringValue`       VARCHAR(4000)     NULL,

	CONSTRAINT `PK_TestConstantsData` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p VarChar(9) -- String
SET     @p = 'StrValue1'

SELECT
	`e`.`Id`,
	`e`.`GuidValue`,
	`e`.`GuidNullableValue`,
	`e`.`StringValue`
FROM
	`TestConstantsData` `e`
WHERE
	Concat(`e`.`StringValue`, '1') = @p

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`GuidValue`,
	`t1`.`GuidNullableValue`,
	`t1`.`StringValue`
FROM
	`TestConstantsData` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `TestConstantsData`

