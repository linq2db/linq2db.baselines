BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue1192Table`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue1192Table`
(
	`IdId`      INT NOT NULL,
	`MyOtherId` INT NOT NULL,
	`Status`    INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(CASE
		WHEN `t`.`Status` = 3 THEN 1
		ELSE NULL
	END)
FROM
	`Issue1192Table` `t`
WHERE
	`t`.`MyOtherId` = 12
LIMIT 1

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue1192Table`

