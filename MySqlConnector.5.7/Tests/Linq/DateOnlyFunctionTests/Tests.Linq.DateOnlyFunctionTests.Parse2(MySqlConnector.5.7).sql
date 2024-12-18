BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Transactions`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Transactions`
(
	`TransactionId`   INT  NOT NULL,
	`TransactionDate` DATE NOT NULL,

	CONSTRAINT `PK_Transactions` PRIMARY KEY CLUSTERED (`TransactionId`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `Transactions`
(
	`TransactionId`,
	`TransactionDate`
)
VALUES
(1,'2020-02-29'),
(2,'2021-02-28'),
(3,'2019-02-28'),
(4,'2020-03-29'),
(5,'2020-01-29'),
(6,'2020-03-01'),
(7,'2020-02-28'),
(8,'2020-08-09'),
(9,'2021-08-09'),
(10,'2019-08-09'),
(11,'2020-09-09'),
(12,'2020-07-09'),
(13,'2020-08-10'),
(14,'2020-08-08')

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`d`.`Day_2`
FROM
	(
		SELECT
			Extract(day from `t`.`TransactionDate`) as `Day_1`,
			`t`.`TransactionDate` as `Day_2`
		FROM
			`Transactions` `t`
	) `d`
WHERE
	`d`.`Day_1` > 0 AND `d`.`Day_1` IS NOT NULL

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Transactions`

