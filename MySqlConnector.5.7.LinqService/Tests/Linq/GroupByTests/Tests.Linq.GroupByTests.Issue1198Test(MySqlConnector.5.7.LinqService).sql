BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue1192Table`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue1192Table`
(
	`IdId`      INT NOT NULL,
	`MyOtherId` INT NOT NULL,
	`Status`    INT NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue1192Table`

