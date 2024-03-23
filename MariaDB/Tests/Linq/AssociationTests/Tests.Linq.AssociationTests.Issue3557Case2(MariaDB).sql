BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Data`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Data`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `Data`
(
	`Id`
)
VALUES
(1),
(2),
(3)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `SubData1`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SubData1`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `SubData1`
(
	`Id`
)
VALUES
(2),
(3)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `SubData2`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SubData2`
(
	`Id`     INT           NOT NULL,
	`Reason` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `SubData2`
(
	`Id`,
	`Reason`
)
VALUES
(3,'прст1'),
(3,'прст2')

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`m_1`.`Id`,
	`d`.`Reason`
FROM
	(
		SELECT DISTINCT
			`a_SubData`.`Id`
		FROM
			`Data` `i`
				LEFT JOIN `SubData1` `a_SubData` ON `i`.`Id` = `a_SubData`.`Id`
	) `m_1`
		INNER JOIN `SubData2` `d` ON `m_1`.`Id` IS NOT NULL AND `m_1`.`Id` = `d`.`Id`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`i`.`Id`,
	`a_SubData`.`Id`
FROM
	`Data` `i`
		LEFT JOIN `SubData1` `a_SubData` ON `i`.`Id` = `a_SubData`.`Id`
ORDER BY
	`i`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `SubData2`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `SubData1`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Data`

