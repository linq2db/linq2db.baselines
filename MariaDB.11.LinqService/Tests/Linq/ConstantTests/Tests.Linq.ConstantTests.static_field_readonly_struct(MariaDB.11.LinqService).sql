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

