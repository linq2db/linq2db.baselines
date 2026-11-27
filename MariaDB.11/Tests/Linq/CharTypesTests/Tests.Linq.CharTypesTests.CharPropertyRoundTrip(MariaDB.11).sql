-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @CharFld String -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO `CharFieldRecord`
(
	`CharFld`
)
VALUES
(
	@CharFld
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`CharFld`
FROM
	`CharFieldRecord` `t1`
LIMIT 1

