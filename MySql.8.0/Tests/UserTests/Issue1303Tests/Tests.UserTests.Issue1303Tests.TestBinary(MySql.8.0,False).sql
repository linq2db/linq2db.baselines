﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue1303`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue1303`
(
	`ID`     INT           NOT NULL,
	`Array`  VARBINARY(10)     NULL,
	`Binary` VARBINARY(10)     NULL,

	CONSTRAINT `PK_Issue1303` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Array Blob(3) -- Binary
SET     @Array = 0x010203
DECLARE @Binary Blob(2) -- Binary
SET     @Binary = 0x0405

INSERT INTO `Issue1303`
(
	`ID`,
	`Array`,
	`Binary`
)
VALUES
(
	1,
	@Array,
	@Binary
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Array Blob(3) -- Binary
SET     @Array = 0x010203
DECLARE @take Int32
SET     @take = 2

SELECT
	`_`.`ID`,
	`_`.`Array`,
	`_`.`Binary`
FROM
	`Issue1303` `_`
WHERE
	`_`.`Array` = @Array
LIMIT @take

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Binary Blob(2) -- Binary
SET     @Binary = 0x0405
DECLARE @take Int32
SET     @take = 2

SELECT
	`_`.`ID`,
	`_`.`Array`,
	`_`.`Binary`
FROM
	`Issue1303` `_`
WHERE
	`_`.`Binary` = @Binary
LIMIT @take

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue1303`

