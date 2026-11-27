-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	(`p`.`ID` * 7 + 1) DIV 2
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
	(`p`.`ID` * -7 - 1) DIV 2
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
	(`p`.`ID` * 7 + 1) DIV (`p`.`ID` - 100)
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
	(CAST(`p`.`ID` AS SIGNED) * 9 + 2) DIV 4
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
	(CAST(`p`.`ID` AS UNSIGNED) * 7 + 1) DIV 2
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
	(CAST(`p`.`ID` AS UNSIGNED) * 9 + 2) DIV 4
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
	`p`.`ID`
FROM
	`LinqDataTypes` `p`
WHERE
	((CAST(`p`.`ID` AS UNSIGNED) * 9 + 2) DIV 4) * 4 = CAST(`p`.`ID` AS UNSIGNED) * 9 + 2
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
	(`p`.`ID` * 7 + 1) DIV 2
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
DECLARE @divisor Int32
SET     @divisor = 4

SELECT
	(`p`.`ID` * 9 + 2) DIV @divisor
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
	-(`p`.`ID` * 7 + 1)
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
	`p`.`ID`
FROM
	`LinqDataTypes` `p`
WHERE
	((`p`.`ID` * 7 + 1) DIV 2) * 2 = `p`.`ID` * 7 + 1
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
	CAST((`p`.`ID` * 7 + 1) DIV 2 AS CHAR(11))
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
	CAST(`p`.`ID` AS DOUBLE) / 2
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
	CAST(`p`.`ID` AS DECIMAL(29, 10)) / 2
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

