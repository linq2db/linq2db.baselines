BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Int`            INT           NOT NULL,
	`NullableInt`    INT               NULL,
	`String`         VARCHAR(4000)     NULL,
	`NullableString` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
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
-- MySql55Connector MySqlConnector MySql
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
-- MySql55Connector MySqlConnector MySql
DECLARE @value VarChar(3) -- String
SET     @value = 'xyz'

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`String` <=> @value

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @value VarChar(3) -- String
SET     @value = 'xyz'

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`NullableString` <=> @value

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @value VarChar(3) -- String
SET     @value = 'xyz'

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` <=> @value

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @value VarChar(3) -- String
SET     @value = 'xyz'

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` <=> @value

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

