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

SELECT
	NULLIF(`s`.`Int`, 2)
FROM
	`Src` `s`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	NULLIF(`s`.`Int`, 4)
FROM
	`Src` `s`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	NULLIF(`s`.`NullableInt`, 2)
FROM
	`Src` `s`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	NULLIF(`s`.`NullableInt`, 4)
FROM
	`Src` `s`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Src`

