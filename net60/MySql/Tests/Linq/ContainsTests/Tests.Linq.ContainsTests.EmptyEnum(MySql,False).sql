﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Id`   INT        NOT NULL,
	`Int`  INT            NULL,
	`Enum` VARCHAR(5)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Src`
(
	`Id`,
	`Int`,
	`Enum`
)
VALUES
(1,NULL,NULL),
(2,2,'TWO')

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	1 = 0

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	1 = 1

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	1 = 1

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Src`

