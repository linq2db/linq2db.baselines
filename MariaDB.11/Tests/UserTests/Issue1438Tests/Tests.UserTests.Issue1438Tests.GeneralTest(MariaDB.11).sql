BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Has Bool -- Boolean
SET     @Has = 1

INSERT INTO `Issue1438`
(
	`Has`
)
VALUES
(
	@Has
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @id Int32
SET     @id = 1

SELECT
	`t1`.`Id`,
	`t1`.`Has`
FROM
	`Issue1438` `t1`
WHERE
	`t1`.`Id` = @id
LIMIT 2

