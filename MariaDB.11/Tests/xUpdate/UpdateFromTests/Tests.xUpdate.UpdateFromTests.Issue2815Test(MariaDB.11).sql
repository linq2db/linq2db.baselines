BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue2815Table1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue2815Table1`
(
	`SRC_BIC`       INT NOT NULL,
	`DES_BIC`       INT NOT NULL,
	`IDF`           INT NOT NULL,
	`TREA_CENT`     INT NOT NULL,
	`NOT_HANDLED`   INT NOT NULL,
	`TRANS_CHANNEL` INT     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue2815Table2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue2815Table2`
(
	`ISO`  INT     NOT NULL,
	`SEPA` BOOLEAN NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue2815Table3`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue2815Table3`
(
	`TreasuryCenter` INT NOT NULL,
	`BIC`            INT NOT NULL,
	`Sepa`           INT NOT NULL,
	`Trans_Channel`  INT NOT NULL,
	`Idf`            INT NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue2815Table3`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue2815Table2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue2815Table1`

