BeforeExecute
BeginTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `mega_composites`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `mega_composites`
(
	`ref1` BIGINT     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `qwerty`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `qwerty`
(
	`Id`     BIGINT        NOT NULL,
	`asdfgh` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int64
SET     @Id = 1
DECLARE @asdfgh VarChar(4) -- String
SET     @asdfgh = 'res1'

INSERT INTO `qwerty`
(
	`Id`,
	`asdfgh`
)
VALUES
(
	@Id,
	@asdfgh
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int64
SET     @Id = 100500
DECLARE @asdfgh VarChar(9) -- String
SET     @asdfgh = 'res100500'

INSERT INTO `qwerty`
(
	`Id`,
	`asdfgh`
)
VALUES
(
	@Id,
	@asdfgh
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ref1 Int64
SET     @ref1 = 100500

INSERT INTO `mega_composites`
(
	`ref1`
)
VALUES
(
	@ref1
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ref1 Int64
SET     @ref1 = 1

INSERT INTO `mega_composites`
(
	`ref1`
)
VALUES
(
	@ref1
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ref1 Int64
SET     @ref1 = 100500

INSERT INTO `mega_composites`
(
	`ref1`
)
VALUES
(
	@ref1
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`ref1`,
	(
		SELECT
			`q`.`asdfgh`
		FROM
			`qwerty` `q`
		WHERE
			`q`.`Id` = `x`.`ref1`
		LIMIT 1
	)
FROM
	`mega_composites` `x`
LIMIT @take

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `qwerty`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `mega_composites`

BeforeExecute
DisposeTransaction
