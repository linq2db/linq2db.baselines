-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @ID Int32
SET     @ID = 1001

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`MoneyValue`,
	`SmallIntValue`
)
VALUES
(
	@ID,
	100,
	200
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @id Int32
SET     @id = 1001

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`SmallIntValue` = CAST(Floor(`t`.`MoneyValue`) AS SIGNED),
	`t`.`MoneyValue` = CAST(`t`.`SmallIntValue` AS DECIMAL(29, 10))
WHERE
	`t`.`ID` = @id

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @id Int32
SET     @id = 1001

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`SmallIntValue` = CAST(Floor(`t`.`MoneyValue`) AS SIGNED),
	`t`.`MoneyValue` = CAST(`t`.`SmallIntValue` AS DECIMAL(29, 10))
WHERE
	`t`.`ID` = @id

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @id Int32
SET     @id = 1001

SELECT
	`t`.`ID`,
	`t`.`MoneyValue`,
	`t`.`DateTimeValue`,
	`t`.`BoolValue`,
	`t`.`GuidValue`,
	`t`.`BinaryValue`,
	`t`.`SmallIntValue`,
	`t`.`StringValue`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` = @id
LIMIT 2

