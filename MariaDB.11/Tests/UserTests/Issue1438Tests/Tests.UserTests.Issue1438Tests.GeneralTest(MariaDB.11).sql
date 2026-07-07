-- MariaDB.11 MariaDB.10.MySqlConnector
-- Batch 1
-- Has = True
INSERT INTO `Issue1438`
(
	`Has`
)
VALUES
(
	@Has
)

-- Batch 2
SELECT
	LAST_INSERT_ID() as `c1`
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

