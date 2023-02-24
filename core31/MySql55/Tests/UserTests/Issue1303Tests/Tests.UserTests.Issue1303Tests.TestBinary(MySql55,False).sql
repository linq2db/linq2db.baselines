﻿BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Issue1303`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue1303`
(
	`ID`     INT           NOT NULL,
	`Array`  VARBINARY(10)     NULL,
	`Binary` VARBINARY(10)     NULL,

	CONSTRAINT `PK_Issue1303` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Array_1 Blob(3) -- Binary
SET     @Array_1 = 0x010203
DECLARE @Binary_1 Blob(2) -- Binary
SET     @Binary_1 = 0x0405

INSERT INTO `Issue1303`
(
	`ID`,
	`Array`,
	`Binary`
)
VALUES
(
	1,
	@Array_1,
	@Binary_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`_`.`ID`,
	`_`.`Array`,
	`_`.`Binary`
FROM
	`Issue1303` `_`
WHERE
	`_`.`ID` = 1
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Array_1 Blob(3) -- Binary
SET     @Array_1 = 0x010203
DECLARE @take Int32
SET     @take = 2

SELECT
	`_`.`ID`,
	`_`.`Array`,
	`_`.`Binary`
FROM
	`Issue1303` `_`
WHERE
	`_`.`Array` = @Array_1
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Binary_1 Blob(2) -- Binary
SET     @Binary_1 = 0x0405
DECLARE @take Int32
SET     @take = 2

SELECT
	`_`.`ID`,
	`_`.`Array`,
	`_`.`Binary`
FROM
	`Issue1303` `_`
WHERE
	`_`.`Binary` = @Binary_1
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Issue1303`

