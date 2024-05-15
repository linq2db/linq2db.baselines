BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Int`            INT           NOT NULL,
	`NullableInt`    INT               NULL,
	`String`         VARCHAR(4000)     NULL,
	`NullableString` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Int Int32
SET     @Int = 2
DECLARE @NullableInt Int32
SET     @NullableInt = 2
DECLARE @String VarChar(3) -- String
SET     @String = 'abc'
DECLARE @NullableString VarChar(3) -- String
SET     @NullableString = 'abc'

INSERT INTO `Src`
(
	`Int`,
	`NullableInt`,
	`String`,
	`NullableString`
)
VALUES
(
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Int Int32
SET     @Int = 3
DECLARE @NullableInt Int32
SET     @NullableInt = NULL
DECLARE @String VarChar(3) -- String
SET     @String = 'def'
DECLARE @NullableString VarChar -- String
SET     @NullableString = NULL

INSERT INTO `Src`
(
	`Int`,
	`NullableInt`,
	`String`,
	`NullableString`
)
VALUES
(
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	NULLIF(`s`.`Int`, 2)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	NULLIF(`s`.`Int`, 4)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	NULLIF(`s`.`Int`, NULL)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	NULLIF(`s`.`NullableInt`, 2)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	NULLIF(`s`.`NullableInt`, 4)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	NULLIF(`s`.`NullableInt`, NULL)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

