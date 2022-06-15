﻿BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Int`            INT           NOT NULL,
	`NullableInt`    INT               NULL,
	`String`         VARCHAR(4000)     NULL,
	`NullableString` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql

SELECT
	NULLIF(`s`.`Int`, 2)
FROM
	`Src` `s`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	NULLIF(`s`.`Int`, 4)
FROM
	`Src` `s`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	NULLIF(`s`.`Int`, NULL)
FROM
	`Src` `s`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	NULLIF(`s`.`NullableInt`, 2)
FROM
	`Src` `s`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	NULLIF(`s`.`NullableInt`, 4)
FROM
	`Src` `s`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	NULLIF(`s`.`NullableInt`, NULL)
FROM
	`Src` `s`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Src`

