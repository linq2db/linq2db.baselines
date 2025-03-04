﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @skip Int32
SET     @skip = 100
DECLARE @take Int32
SET     @take = 10

SELECT
	`m_1`.`Id`,
	`m_1`.`Id_1`,
	`d_1`.`Id`,
	`d_1`.`SubOrderId`,
	`d_1`.`Code`,
	`d_1`.`Date`,
	`d_1`.`IsActive`
FROM
	(
		SELECT DISTINCT
			`d`.`Id`,
			`t3`.`Id` as `Id_1`
		FROM
			(
				SELECT DISTINCT
					`t2`.`Id`
				FROM
					(
						SELECT
							`t1`.`Id`
						FROM
							(
								SELECT
									`x`.`Id`
								FROM
									`Order` `x`
								WHERE
									`x`.`Name` LIKE 'cat%' ESCAPE '~'
							) `t1`
						ORDER BY
							`t1`.`Id`
						LIMIT @skip, @take
					) `t2`
			) `t3`
				INNER JOIN `SubOrder` `d` ON `t3`.`Id` = `d`.`OrderId`
	) `m_1`
		INNER JOIN `SubOrderDetail` `d_1` ON `m_1`.`Id` = `d_1`.`SubOrderId`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @skip Int32
SET     @skip = 100
DECLARE @take Int32
SET     @take = 10

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`OrderId`
FROM
	(
		SELECT DISTINCT
			`t2`.`Id`
		FROM
			(
				SELECT
					`t1`.`Id`
				FROM
					(
						SELECT
							`x`.`Id`
						FROM
							`Order` `x`
						WHERE
							`x`.`Name` LIKE 'cat%' ESCAPE '~'
					) `t1`
				ORDER BY
					`t1`.`Id`
				LIMIT @skip, @take
			) `t2`
	) `m_1`
		INNER JOIN `SubOrder` `d` ON `m_1`.`Id` = `d`.`OrderId`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @skip Int32
SET     @skip = 100
DECLARE @take Int32
SET     @take = 10

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	(
		SELECT
			`x`.`Id`,
			`x`.`Name`
		FROM
			`Order` `x`
		WHERE
			`x`.`Name` LIKE 'cat%' ESCAPE '~'
	) `t1`
ORDER BY
	`t1`.`Id`
LIMIT @skip, @take

