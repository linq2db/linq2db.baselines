﻿BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Int`            INT           NOT NULL,
	`NullableInt`    INT               NULL,
	`String`         VARCHAR(4000)     NULL,
	`NullableString` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

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
-- MariaDB MySql.Official MySql
DECLARE @value_1 VarChar(3) -- String
SET     @value_1 = 'xyz'

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`String` <=> @value_1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @value_1 VarChar(3) -- String
SET     @value_1 = 'xyz'

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`NullableString` <=> @value_1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @value_1 VarChar(3) -- String
SET     @value_1 = 'xyz'

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` <=> @value_1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @value_1 VarChar(3) -- String
SET     @value_1 = 'xyz'

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` <=> @value_1

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `Src`

