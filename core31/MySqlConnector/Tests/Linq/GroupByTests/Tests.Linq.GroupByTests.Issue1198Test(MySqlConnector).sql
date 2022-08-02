﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1192Table`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1192Table`
(
	`IdId`      INT NOT NULL,
	`MyOtherId` INT NOT NULL,
	`Status`    INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Issue1192Table` `t`
		WHERE
			`t`.`Status` = 3 AND `t`.`MyOtherId` = 12
	)
FROM
	`Issue1192Table` `t_1`
WHERE
	`t_1`.`MyOtherId` = 12
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1192Table`

