﻿BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Issue1316Tests`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_Issue1316Tests` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 5

INSERT INTO `Issue1316Tests`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Item1 Int32
SET     @Item1 = 5

SELECT
	`_`.`ID`
FROM
	`Issue1316Tests` `_`
WHERE
	`_`.`ID` = @Item1
LIMIT 2

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Issue1316Tests`

