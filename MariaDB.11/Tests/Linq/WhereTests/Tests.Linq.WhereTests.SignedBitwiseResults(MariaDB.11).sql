-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(~`p`.`ID` AS SIGNED)
FROM
	`LinqDataTypes` `p`
ORDER BY
	`p`.`ID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ID`,
	`t1`.`MoneyValue`,
	`t1`.`DateTimeValue`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`,
	`t1`.`BinaryValue`,
	`t1`.`SmallIntValue`,
	`t1`.`StringValue`
FROM
	`LinqDataTypes` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(~CAST(`p`.`ID` AS SIGNED) AS SIGNED)
FROM
	`LinqDataTypes` `p`
ORDER BY
	`p`.`ID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ID`,
	`t1`.`MoneyValue`,
	`t1`.`DateTimeValue`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`,
	`t1`.`BinaryValue`,
	`t1`.`SmallIntValue`,
	`t1`.`StringValue`
FROM
	`LinqDataTypes` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(~`p`.`SmallIntValue` AS SIGNED)
FROM
	`LinqDataTypes` `p`
ORDER BY
	`p`.`ID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ID`,
	`t1`.`MoneyValue`,
	`t1`.`DateTimeValue`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`,
	`t1`.`BinaryValue`,
	`t1`.`SmallIntValue`,
	`t1`.`StringValue`
FROM
	`LinqDataTypes` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(`p`.`ID` | -5 AS SIGNED)
FROM
	`LinqDataTypes` `p`
ORDER BY
	`p`.`ID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ID`,
	`t1`.`MoneyValue`,
	`t1`.`DateTimeValue`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`,
	`t1`.`BinaryValue`,
	`t1`.`SmallIntValue`,
	`t1`.`StringValue`
FROM
	`LinqDataTypes` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(CAST(`p`.`ID` AS SIGNED) ^ -6 AS SIGNED)
FROM
	`LinqDataTypes` `p`
ORDER BY
	`p`.`ID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ID`,
	`t1`.`MoneyValue`,
	`t1`.`DateTimeValue`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`,
	`t1`.`BinaryValue`,
	`t1`.`SmallIntValue`,
	`t1`.`StringValue`
FROM
	`LinqDataTypes` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(`p`.`ID` & -3 AS SIGNED)
FROM
	`LinqDataTypes` `p`
ORDER BY
	`p`.`ID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ID`,
	`t1`.`MoneyValue`,
	`t1`.`DateTimeValue`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`,
	`t1`.`BinaryValue`,
	`t1`.`SmallIntValue`,
	`t1`.`StringValue`
FROM
	`LinqDataTypes` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(`p`.`ID` & 6 AS SIGNED) - 10
FROM
	`LinqDataTypes` `p`
ORDER BY
	`p`.`ID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ID`,
	`t1`.`MoneyValue`,
	`t1`.`DateTimeValue`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`,
	`t1`.`BinaryValue`,
	`t1`.`SmallIntValue`,
	`t1`.`StringValue`
FROM
	`LinqDataTypes` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-CAST(`p`.`ID` & 6 AS SIGNED)
FROM
	`LinqDataTypes` `p`
ORDER BY
	`p`.`ID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ID`,
	`t1`.`MoneyValue`,
	`t1`.`DateTimeValue`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`,
	`t1`.`BinaryValue`,
	`t1`.`SmallIntValue`,
	`t1`.`StringValue`
FROM
	`LinqDataTypes` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(CAST(`p`.`ID` AS SIGNED) & `p`.`ID` - 10 AS SIGNED)
FROM
	`LinqDataTypes` `p`
ORDER BY
	`p`.`ID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ID`,
	`t1`.`MoneyValue`,
	`t1`.`DateTimeValue`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`,
	`t1`.`BinaryValue`,
	`t1`.`SmallIntValue`,
	`t1`.`StringValue`
FROM
	`LinqDataTypes` `t1`

