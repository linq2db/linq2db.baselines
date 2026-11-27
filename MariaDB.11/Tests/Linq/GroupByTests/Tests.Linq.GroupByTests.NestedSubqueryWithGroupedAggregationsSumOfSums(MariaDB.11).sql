-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`product`.`Id`,
	(
		SELECT
			SUM(`t1`.`OnOrder`)
		FROM
			(
				SELECT
					SUM(CAST(`testGroup`.`Quantity` AS DECIMAL(29, 10))) as `OnOrder`
				FROM
					`GroupedSumLineItem` `testGroup`
				GROUP BY
					`testGroup`.`Id`
			) `t1`
	)
FROM
	`GroupedSumProduct` `product`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`GroupedSumProduct` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`ProductId`,
	`t1`.`Quantity`
FROM
	`GroupedSumLineItem` `t1`

