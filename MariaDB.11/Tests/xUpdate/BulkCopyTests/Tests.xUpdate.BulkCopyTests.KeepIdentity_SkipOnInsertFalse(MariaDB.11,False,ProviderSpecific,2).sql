-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Value Int32
SET     @Value = 0

INSERT INTO `KeepIdentityTest`
(
	`Value`
)
VALUES
(
	@Value
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT LAST_INSERT_ID()

INSERT ASYNC BULK `KeepIdentityTest`(Value)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @lastId Int32
SET     @lastId = 267

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`KeepIdentityTest` `t1`
WHERE
	`t1`.`ID` > @lastId
ORDER BY
	`t1`.`ID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @lastId Int32
SET     @lastId = 267

DELETE  
FROM
	`KeepIdentityTest`
WHERE
	`KeepIdentityTest`.`ID` >= @lastId

