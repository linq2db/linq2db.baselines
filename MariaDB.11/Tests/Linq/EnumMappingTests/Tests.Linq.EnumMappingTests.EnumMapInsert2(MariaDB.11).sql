-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p Int32
SET     @p = 102

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 101 AND `LinqDataTypes`.`ID` < @p

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`BigIntValue`
)
VALUES
(
	101,
	12
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` = 101 AND `r`.`BigIntValue` = 12

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p Int32
SET     @p = 102

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 101 AND `LinqDataTypes`.`ID` < @p

