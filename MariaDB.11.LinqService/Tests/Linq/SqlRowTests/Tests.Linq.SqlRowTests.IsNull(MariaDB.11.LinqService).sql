BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Ints`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Ints`
(
	`One`   INT NOT NULL,
	`Two`   INT NOT NULL,
	`Three` INT NOT NULL,
	`Four`  INT NOT NULL,
	`Five`  INT NOT NULL,
	`Nil`   INT     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @One Int32
SET     @One = 1
DECLARE @Two Int32
SET     @Two = 2
DECLARE @Three Int32
SET     @Three = 3
DECLARE @Four Int32
SET     @Four = 4
DECLARE @Five Int32
SET     @Five = 5
DECLARE @Nil Int32
SET     @Nil = NULL

INSERT INTO `Ints`
(
	`One`,
	`Two`,
	`Three`,
	`Four`,
	`Five`,
	`Nil`
)
VALUES
(
	@One,
	@Two,
	@Three,
	@Four,
	@Five,
	@Nil
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	`i`.`One` IS NULL AND `i`.`Two` IS NULL AND `i`.`Three` IS NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	`i`.`One` IS NULL AND `i`.`Nil` IS NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	`i`.`Nil` IS NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Ints`

