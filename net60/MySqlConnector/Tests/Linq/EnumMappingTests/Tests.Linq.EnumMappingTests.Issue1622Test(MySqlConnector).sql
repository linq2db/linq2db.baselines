﻿BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Issue1622Table`
(
	`Id`       INT           NOT NULL,
	`SomeText` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Issue1622Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @SomeText VarChar(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO `Issue1622Table`
(
	`Id`,
	`SomeText`
)
VALUES
(
	@Id,
	@SomeText
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`e`.`Id`,
	`e`.`SomeText`
FROM
	`Issue1622Table` `e`
WHERE
	`e`.`SomeText` = 'Value1_suffix'
LIMIT 2

BeforeExecute
-- MySqlConnector MySql

SELECT
	`e`.`Id`,
	`e`.`SomeText`
FROM
	`Issue1622Table` `e`
WHERE
	`e`.`Id` = 1
LIMIT 2

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1622Table`

