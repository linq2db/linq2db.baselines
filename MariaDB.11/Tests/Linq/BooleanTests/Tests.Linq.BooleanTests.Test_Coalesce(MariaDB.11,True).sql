BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Boolean`,
	`r`.`BooleanN`,
	`r`.`Int32`,
	`r`.`Int32N`,
	`r`.`Decimal`,
	`r`.`DecimalN`,
	`r`.`Double`,
	`r`.`DoubleN`
FROM
	`BooleanTable` `r`
WHERE
	Coalesce(`r`.`BooleanN`, 1)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Boolean`,
	`t1`.`BooleanN`,
	`t1`.`Int32`,
	`t1`.`Int32N`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`,
	`t1`.`Double`,
	`t1`.`DoubleN`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Boolean`,
	`r`.`BooleanN`,
	`r`.`Int32`,
	`r`.`Int32N`,
	`r`.`Decimal`,
	`r`.`DecimalN`,
	`r`.`Double`,
	`r`.`DoubleN`
FROM
	`BooleanTable` `r`
WHERE
	Coalesce(`r`.`BooleanN`, 0)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Boolean`,
	`t1`.`BooleanN`,
	`t1`.`Int32`,
	`t1`.`Int32N`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`,
	`t1`.`Double`,
	`t1`.`DoubleN`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Boolean`,
	`r`.`BooleanN`,
	`r`.`Int32`,
	`r`.`Int32N`,
	`r`.`Decimal`,
	`r`.`DecimalN`,
	`r`.`Double`,
	`r`.`DoubleN`
FROM
	`BooleanTable` `r`
WHERE
	(Coalesce(`r`.`BooleanN`, `r`.`Id` % 2 = 1))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Boolean`,
	`t1`.`BooleanN`,
	`t1`.`Int32`,
	`t1`.`Int32N`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`,
	`t1`.`Double`,
	`t1`.`DoubleN`
FROM
	`BooleanTable` `t1`

