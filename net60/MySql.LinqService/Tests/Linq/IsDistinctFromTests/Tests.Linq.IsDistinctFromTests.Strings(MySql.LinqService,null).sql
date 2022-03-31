﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Int`            INT          NOT NULL,
	`NullableInt`    INT              NULL,
	`String`         VARCHAR(255)     NULL,
	`NullableString` VARCHAR(255)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` IS NOT NULL

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` IS NOT NULL

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` IS NULL

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` IS NULL

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Src`

