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

