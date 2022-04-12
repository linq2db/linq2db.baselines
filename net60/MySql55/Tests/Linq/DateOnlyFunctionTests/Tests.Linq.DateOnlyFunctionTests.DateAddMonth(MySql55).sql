﻿BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Transactions`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Transactions`
(
	`TransactionId`   INT  NOT NULL,
	`TransactionDate` DATE NOT NULL,

	CONSTRAINT `PK_Transactions` PRIMARY KEY CLUSTERED (`TransactionId`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

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
(7,'2020-02-28')

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Date_Add(`t`.`TransactionDate`, Interval 2 Month)
FROM
	`Transactions` `t`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Transactions`

