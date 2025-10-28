BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @CharFld String -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO `Issue1279Table`
(
	`CharFld`
)
VALUES
(
	@CharFld
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t1`.`Id`,
	`t1`.`CharFld`
FROM
	`Issue1279Table` `t1`
LIMIT 1

