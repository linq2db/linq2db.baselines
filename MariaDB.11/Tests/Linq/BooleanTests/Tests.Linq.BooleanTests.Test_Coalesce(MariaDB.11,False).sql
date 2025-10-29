-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
SET     @True = 1

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
	Coalesce(`r`.`BooleanN`, @True)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
SET     @False = 0

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
	Coalesce(`r`.`BooleanN`, @False)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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
	Coalesce(`r`.`BooleanN`, `r`.`Id` % 2 = 1)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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

