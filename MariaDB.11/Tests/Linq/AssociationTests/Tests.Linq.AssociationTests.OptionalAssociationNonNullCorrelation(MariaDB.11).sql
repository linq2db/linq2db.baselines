BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Table1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Table1`
(
	`ID`  INT NOT NULL,
	`ID2` INT     NULL,

	CONSTRAINT `PK_Table1` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Table1`
(
	`ID`,
	`ID2`
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Table2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Table2`
(
	`ID`  INT NOT NULL,
	`ID3` INT     NULL,

	CONSTRAINT `PK_Table2` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Table2`
(
	`ID`,
	`ID3`
)
VALUES
(1,1)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Table3`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Table3`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_Table3` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Table3`
(
	`ID`
)
VALUES
(1)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Table4`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Table4`
(
	`ID`  INT NOT NULL,
	`ID3` INT     NULL,

	CONSTRAINT `PK_Table4` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Table4`
(
	`ID`,
	`ID3`
)
VALUES
(1,1),
(2,NULL)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`m_1`.`ID`,
	`d`.`ID`,
	`d`.`ID3`
FROM
	(
		SELECT DISTINCT
			`a_Table3`.`ID`
		FROM
			`Table1` `r`
				LEFT JOIN `Table2` `a_Table2` ON `r`.`ID2` = `a_Table2`.`ID` AND `r`.`ID2` IS NOT NULL
				LEFT JOIN `Table3` `a_Table3` ON `a_Table2`.`ID3` = `a_Table3`.`ID` AND `a_Table2`.`ID3` IS NOT NULL
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					`Table4` `id`
				WHERE
					`a_Table3`.`ID` = `id`.`ID3` AND `id`.`ID3` IS NOT NULL AND
					`id`.`ID` = `r`.`ID`
			)
	) `m_1`
		INNER JOIN `Table4` `d` ON `m_1`.`ID` = `d`.`ID3` AND `m_1`.`ID` IS NOT NULL AND `d`.`ID3` IS NOT NULL OR `m_1`.`ID` IS NULL AND `d`.`ID3` IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`r`.`ID`,
	`r`.`ID2`,
	`a_Table2`.`ID`,
	`a_Table2`.`ID3`,
	`a_Table3`.`ID`
FROM
	`Table1` `r`
		LEFT JOIN `Table2` `a_Table2` ON `r`.`ID2` = `a_Table2`.`ID` AND `r`.`ID2` IS NOT NULL
		LEFT JOIN `Table3` `a_Table3` ON `a_Table2`.`ID3` = `a_Table3`.`ID` AND `a_Table2`.`ID3` IS NOT NULL
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Table4` `id`
		WHERE
			`a_Table3`.`ID` = `id`.`ID3` AND `id`.`ID3` IS NOT NULL AND
			`id`.`ID` = `r`.`ID`
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`m_1`.`cond`,
	`d`.`ID`,
	`d`.`ID3`
FROM
	(
		SELECT DISTINCT
			`a_Table3`.`ID` as `cond`
		FROM
			`Table1` `t1`
				LEFT JOIN `Table2` `a_Table2` ON `t1`.`ID2` = `a_Table2`.`ID` AND `t1`.`ID2` IS NOT NULL
				LEFT JOIN `Table3` `a_Table3` ON `a_Table2`.`ID3` = `a_Table3`.`ID` AND `a_Table2`.`ID3` IS NOT NULL
	) `m_1`
		INNER JOIN `Table4` `d` ON `m_1`.`cond` = `d`.`ID3` AND `m_1`.`cond` IS NOT NULL AND `d`.`ID3` IS NOT NULL OR `m_1`.`cond` IS NULL AND `d`.`ID3` IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`ID`,
	`t1`.`ID2`,
	`a_Table2`.`ID`,
	`a_Table2`.`ID3`,
	`a_Table3`.`ID`
FROM
	`Table1` `t1`
		LEFT JOIN `Table2` `a_Table2` ON `t1`.`ID2` = `a_Table2`.`ID` AND `t1`.`ID2` IS NOT NULL
		LEFT JOIN `Table3` `a_Table3` ON `a_Table2`.`ID3` = `a_Table3`.`ID` AND `a_Table2`.`ID3` IS NOT NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Table4`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Table3`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Table2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Table1`

