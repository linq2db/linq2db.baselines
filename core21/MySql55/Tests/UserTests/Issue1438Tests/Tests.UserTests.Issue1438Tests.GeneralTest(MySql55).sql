﻿BeforeExecute
-- MySql55 MySql

CREATE TABLE `Issue1438`
(
	`Id`  INT     AUTO_INCREMENT NOT NULL,
	`Has` BOOLEAN                NOT NULL,

	CONSTRAINT `PK_Issue1438` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql
DECLARE @Has Bool -- Boolean
SET     @Has = 1

INSERT INTO `Issue1438`
(
	`Has`
)
VALUES
(
	@Has
)

BeforeExecute
-- MySql55 MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql55 MySql
DECLARE @id Int32
SET     @id = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	`_`.`Id`,
	`_`.`Has`
FROM
	`Issue1438` `_`
WHERE
	`_`.`Id` = @id
LIMIT @take

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `Issue1438`

