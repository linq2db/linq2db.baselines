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
DECLARE @lastId Int32
SET     @lastId = 374

DELETE  
FROM
	`KeepIdentityTest`
WHERE
	`KeepIdentityTest`.`ID` >= @lastId

