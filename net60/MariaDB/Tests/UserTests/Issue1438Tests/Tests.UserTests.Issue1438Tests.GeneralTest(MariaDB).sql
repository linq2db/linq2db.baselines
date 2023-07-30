BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1438`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1438`
(
	`Id`  INT     AUTO_INCREMENT NOT NULL,
	`Has` BOOLEAN                NOT NULL,

	CONSTRAINT `PK_Issue1438` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @id Int32
SET     @id = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	`_`.`Id`,
	`_`.`Has`
FROM
	`Issue1438` `_`
WHERE
	`_`.`Id` = @id
LIMIT @take

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1438`

