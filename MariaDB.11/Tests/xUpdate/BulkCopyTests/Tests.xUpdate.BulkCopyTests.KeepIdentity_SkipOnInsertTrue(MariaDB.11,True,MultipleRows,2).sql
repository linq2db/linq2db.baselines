INSERT INTO `KeepIdentityTest`
(
	`Value`
)
VALUES
(
	@Value
)
;
SELECT
	LAST_INSERT_ID() as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `KeepIdentityTest`
(
	`ID`,
	`Value`
)
VALUES
(428,200),
(438,300)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @lastId Int32
SET     @lastId = 418

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
SET     @lastId = 418

DELETE  
FROM
	`KeepIdentityTest`
WHERE
	`KeepIdentityTest`.`ID` >= @lastId

