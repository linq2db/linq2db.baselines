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

INSERT INTO `Src`
(
	`Int`,
	`NullableInt`,
	`String`,
	`NullableString`
)
VALUES
(2,2,'abc','abc'),
(3,NULL,'def',NULL)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @value_1 Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`Int` <=> @value_1

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @value_1 Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`NullableInt` <=> @value_1

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @value_1 Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` <=> @value_1

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @value_1 Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` <=> @value_1

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Src`

