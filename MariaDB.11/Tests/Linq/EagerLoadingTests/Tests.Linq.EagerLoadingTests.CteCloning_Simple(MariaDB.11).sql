BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `CteTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `CteTable`
(
	`Id`     INT NOT NULL,
	`Value1` INT NOT NULL,
	`Value2` INT NOT NULL,
	`Value3` INT NOT NULL,
	`Value4` INT NOT NULL,
	`Value5` INT NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `CteChildTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `CteChildTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

WITH `CTE_1` (`Value4`)
AS
(
	SELECT
		`r`.`Value4`
	FROM
		`CteTable` `r`
)
SELECT
	`m_1`.`Id`,
	`d_1`.`Id`,
	`d_1`.`Value1`,
	`d_1`.`Value2`,
	`d_1`.`Value3`,
	`d_1`.`Value4`,
	`d_1`.`Value5`
FROM
	(
		SELECT DISTINCT
			`d`.`Id`
		FROM
			`CTE_1` `t1`
				LEFT JOIN `CteChildTable` `d` ON `t1`.`Value4` = `d`.`Id`
	) `m_1`
		INNER JOIN `CteTable` `d_1` ON `m_1`.`Id` = `d_1`.`Value3`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

WITH `CTE_1`
(
	`Value4`,
	`Id`,
	`Value1`,
	`Value2`,
	`Value3`,
	`Value5`
)
AS
(
	SELECT
		`r`.`Value4`,
		`r`.`Id`,
		`r`.`Value1`,
		`r`.`Value2`,
		`r`.`Value3`,
		`r`.`Value5`
	FROM
		`CteTable` `r`
)
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value3`,
	`t1`.`Value4`,
	`t1`.`Value5`,
	`d`.`Id`
FROM
	`CTE_1` `t1`
		LEFT JOIN `CteChildTable` `d` ON `t1`.`Value4` = `d`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `CteChildTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `CteTable`

