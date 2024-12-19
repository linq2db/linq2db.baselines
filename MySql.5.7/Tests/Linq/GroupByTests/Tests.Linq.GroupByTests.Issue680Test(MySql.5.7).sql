BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue680Table`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue680Table`
(
	`TimeStamp` DATETIME NOT NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(CASE
		WHEN `g_1`.`TimeStamp` > '2020-02-29 17:54:55.123' THEN 1
		ELSE NULL
	END)
FROM
	`Issue680Table` `g_1`
GROUP BY
	`g_1`.`TimeStamp`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue680Table`

