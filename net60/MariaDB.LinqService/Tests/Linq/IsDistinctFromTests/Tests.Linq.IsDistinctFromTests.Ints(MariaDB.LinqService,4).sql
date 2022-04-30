﻿BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Int`            INT          NOT NULL,
	`NullableInt`    INT              NULL,
	`String`         VARCHAR(255)     NULL,
	`NullableString` VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
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
-- MariaDB MySql.Official MySql
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
-- MariaDB MySql.Official MySql
DECLARE @value_1 Int32
SET     @value_1 = 4

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`Int` <=> @value_1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @value_1 Int32
SET     @value_1 = 4

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`NullableInt` <=> @value_1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @value_1 Int32
SET     @value_1 = 4

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` <=> @value_1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @value_1 Int32
SET     @value_1 = 4

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` <=> @value_1

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `Src`

