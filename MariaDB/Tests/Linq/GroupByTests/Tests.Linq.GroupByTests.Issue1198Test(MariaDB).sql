BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1192Table`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1192Table`
(
	`IdId`      INT NOT NULL,
	`MyOtherId` INT NOT NULL,
	`Status`    INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	COUNT(CASE
		WHEN `t`.`Status` = 3 THEN 1
		ELSE NULL
	END)
FROM
	`Issue1192Table` `t`
WHERE
	`t`.`MyOtherId` = 12
LIMIT 1

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1192Table`

