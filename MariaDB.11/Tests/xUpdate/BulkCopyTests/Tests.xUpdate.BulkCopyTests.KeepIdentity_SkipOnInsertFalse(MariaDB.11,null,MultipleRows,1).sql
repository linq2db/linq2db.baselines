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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `KeepIdentityTest`
(
	`Value`
)
VALUES
(200),
(300)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @lastId Int32
SET     @lastId = 22

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
SET     @lastId = 22

DELETE  
FROM
	`KeepIdentityTest`
WHERE
	`KeepIdentityTest`.`ID` >= @lastId

