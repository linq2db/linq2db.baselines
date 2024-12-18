BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4192TableNullable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue4192TableNullable`
(
	`Name`     VARCHAR(4000)     NULL,
	`ParentId` INT               NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @parentId Int32
SET     @parentId = 12

SELECT
	`i`.`Name`,
	`i`.`ParentId`
FROM
	`Issue4192TableNullable` `i`
WHERE
	`i`.`ParentId` = @parentId AND `i`.`ParentId` IS NOT NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4192TableNullable`

