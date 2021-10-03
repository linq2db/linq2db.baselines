BeforeExecute
-- MySql55 MySql

CREATE TABLE `Issue1316Tests`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_Issue1316Tests` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql55 MySql
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
-- MySql55 MySql
DECLARE @ID Int32
SET     @ID = 5
DECLARE @take Int32
SET     @take = 2

SELECT
	`_`.`ID`
FROM
	`Issue1316Tests` `_`
WHERE
	`_`.`ID` = @ID
LIMIT @take

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `Issue1316Tests`

