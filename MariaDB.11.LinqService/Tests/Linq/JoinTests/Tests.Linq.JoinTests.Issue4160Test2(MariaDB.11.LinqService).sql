BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4160Person`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue4160Person`
(
	`Code` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO `Issue4160Person`
(
	`Code`
)
VALUES
(
	@Code
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO `Issue4160Person`
(
	`Code`
)
VALUES
(
	@Code
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SH'

INSERT INTO `Issue4160Person`
(
	`Code`
)
VALUES
(
	@Code
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4160City`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue4160City`
(
	`Code` VARCHAR(4000)     NULL,
	`Name` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'SYDNEY'

INSERT INTO `Issue4160City`
(
	`Code`,
	`Name`
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'SUNDAY'

INSERT INTO `Issue4160City`
(
	`Code`,
	`Name`
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SH'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'SYDHIP'

INSERT INTO `Issue4160City`
(
	`Code`,
	`Name`
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT DISTINCT
	`cc_1`.`Value_1`
FROM
	`Issue4160Person` `t1`
		LEFT JOIN (
			SELECT
				`cc`.`Name` as `Value_1`,
				ROW_NUMBER() OVER (PARTITION BY `cc`.`Code` ORDER BY `cc`.`Code`) as `rn`,
				`cc`.`Code`
			FROM
				`Issue4160City` `cc`
		) `cc_1` ON (`cc_1`.`Code` = `t1`.`Code` OR `cc_1`.`Code` IS NULL AND `t1`.`Code` IS NULL) AND `cc_1`.`rn` <= 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4160City`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4160Person`

