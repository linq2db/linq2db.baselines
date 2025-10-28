BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CAST(Concat('2010-01-', Lpad(`t`.`TransactionId`,2,'0')) AS DATE)
FROM
	`Transactions` `t`
WHERE
	Extract(day from CAST(Concat('2010-01-', Lpad(`t`.`TransactionId`,2,'0')) AS DATE)) > 0

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`TransactionId`,
	`t1`.`TransactionDate`
FROM
	`Transactions` `t1`

