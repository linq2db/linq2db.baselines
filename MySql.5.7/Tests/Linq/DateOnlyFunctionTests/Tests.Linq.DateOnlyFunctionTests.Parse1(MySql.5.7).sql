BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Transactions`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Transactions`
(
	`TransactionId`   INT  NOT NULL,
	`TransactionDate` DATE NOT NULL,

	CONSTRAINT `PK_Transactions` PRIMARY KEY CLUSTERED (`TransactionId`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CAST(Concat('2010-01-', Lpad(`t`.`TransactionId`,2,'0')) AS DATE)
FROM
	`Transactions` `t`
WHERE
	Extract(day from CAST(Concat('2010-01-', Lpad(`t`.`TransactionId`,2,'0')) AS DATE)) > 0

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`TransactionId`,
	`t1`.`TransactionDate`
FROM
	`Transactions` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Transactions`

