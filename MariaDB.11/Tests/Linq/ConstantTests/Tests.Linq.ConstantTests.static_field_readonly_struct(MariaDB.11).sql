BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TestConstantsData`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TestConstantsData`
(
	`Id`                INT           NOT NULL,
	`GuidValue`         CHAR(36)      NOT NULL,
	`GuidNullableValue` CHAR(36)          NULL,
	`StringValue`       VARCHAR(4000)     NULL,

	CONSTRAINT `PK_TestConstantsData` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @p Int32
SET     @p = 2

SELECT
	`e`.`Id`,
	`e`.`GuidValue`,
	`e`.`GuidNullableValue`,
	`e`.`StringValue`
FROM
	`TestConstantsData` `e`
WHERE
	`e`.`Id` = @Id AND `e`.`Id` = @p

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`GuidValue`,
	`t1`.`GuidNullableValue`,
	`t1`.`StringValue`
FROM
	`TestConstantsData` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @p Int32
SET     @p = 2

SELECT
	`e`.`Id`,
	`e`.`GuidValue`,
	`e`.`GuidNullableValue`,
	`e`.`StringValue`
FROM
	`TestConstantsData` `e`
WHERE
	`e`.`Id` = @Id AND `e`.`Id` = @p

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`GuidValue`,
	`t1`.`GuidNullableValue`,
	`t1`.`StringValue`
FROM
	`TestConstantsData` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TestConstantsData`

