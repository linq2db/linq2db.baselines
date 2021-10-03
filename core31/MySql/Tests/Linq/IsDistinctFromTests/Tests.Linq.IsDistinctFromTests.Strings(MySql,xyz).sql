BeforeExecute
-- MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Int`            INT          NOT NULL,
	`NullableInt`    INT              NULL,
	`String`         VARCHAR(255)     NULL,
	`NullableString` VARCHAR(255)     NULL
)

BeforeExecute
-- MySql

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
-- MySql
DECLARE @value_1 VarChar(3) -- String
SET     @value_1 = 'xyz'

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`String` <=> @value_1

BeforeExecute
-- MySql
DECLARE @value_1 VarChar(3) -- String
SET     @value_1 = 'xyz'

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`NullableString` <=> @value_1

BeforeExecute
-- MySql
DECLARE @value_1 VarChar(3) -- String
SET     @value_1 = 'xyz'

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` <=> @value_1

BeforeExecute
-- MySql
DECLARE @value_1 VarChar(3) -- String
SET     @value_1 = 'xyz'

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` <=> @value_1

BeforeExecute
-- MySql

DROP TABLE IF EXISTS `Src`

