-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InnerNonReadonlyStructure Int32
SET     @InnerNonReadonlyStructure = 2

SELECT
	`e`.`Id`,
	`e`.`GuidValue`,
	`e`.`GuidNullableValue`,
	`e`.`StringValue`
FROM
	`TestConstantsData` `e`
WHERE
	`e`.`Id` = @Id AND `e`.`Id` = @InnerNonReadonlyStructure

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`GuidValue`,
	`t1`.`GuidNullableValue`,
	`t1`.`StringValue`
FROM
	`TestConstantsData` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InnerNonReadonlyStructure Int32
SET     @InnerNonReadonlyStructure = 2

SELECT
	`e`.`Id`,
	`e`.`GuidValue`,
	`e`.`GuidNullableValue`,
	`e`.`StringValue`
FROM
	`TestConstantsData` `e`
WHERE
	`e`.`Id` = @Id AND `e`.`Id` = @InnerNonReadonlyStructure

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`GuidValue`,
	`t1`.`GuidNullableValue`,
	`t1`.`StringValue`
FROM
	`TestConstantsData` `t1`

