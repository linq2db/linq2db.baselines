BeforeExecute
BeginTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @CODE_AA VarChar(2) -- String
SET     @CODE_AA = 'AA'

INSERT INTO `TEST_TB_AA`
(
	`CODE_AA`
)
VALUES
(
	@CODE_AA
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TEMPORARY TABLE IF NOT EXISTS `TMP_MIN_TEMPORARY`
(
	`IDX`   INT         AUTO_INCREMENT NOT NULL,
	`KEY_A` VARCHAR(80)                NOT NULL,

	CONSTRAINT `PK_TMP_MIN_TEMPORARY` PRIMARY KEY CLUSTERED (`IDX`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TEMPORARY TABLE IF EXISTS `TMP_MIN_TEMPORARY`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @CODE_AA VarChar(2) -- String
SET     @CODE_AA = 'AA'

INSERT INTO `TEST_TB_AA`
(
	`CODE_AA`
)
VALUES
(
	@CODE_AA
)

BeforeExecute
RollbackTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`TEST_TB_AA` `t1`

