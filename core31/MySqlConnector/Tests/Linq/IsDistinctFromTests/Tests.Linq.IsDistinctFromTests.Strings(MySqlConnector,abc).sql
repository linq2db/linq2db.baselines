﻿BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Src`
(
	`Int`            INT          NOT NULL,
	`NullableInt`    INT              NULL,
	`String`         VARCHAR(255)     NULL,
	`NullableString` VARCHAR(255)     NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Int_1 Int32
SET     @Int_1 = 2
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
	@Int_1,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Int_1 Int32
SET     @Int_1 = 3
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
	@Int_1,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @value_1 VarChar(3) -- String
SET     @value_1 = 'abc'

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`String` <=> @value_1

BeforeExecute
-- MySqlConnector MySql
DECLARE @value_1 VarChar(3) -- String
SET     @value_1 = 'abc'

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`NullableString` <=> @value_1

BeforeExecute
-- MySqlConnector MySql
DECLARE @value_1 VarChar(3) -- String
SET     @value_1 = 'abc'

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` <=> @value_1

BeforeExecute
-- MySqlConnector MySql
DECLARE @value_1 VarChar(3) -- String
SET     @value_1 = 'abc'

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` <=> @value_1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

