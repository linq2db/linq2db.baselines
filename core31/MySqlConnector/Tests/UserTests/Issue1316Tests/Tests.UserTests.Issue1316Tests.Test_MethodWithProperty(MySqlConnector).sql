BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Issue1316Tests`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_Issue1316Tests` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql
DECLARE @Item1 Int32
SET     @Item1 = 5
DECLARE @take Int32
SET     @take = 2

SELECT 
	`_`.`ID`
FROM
	`Issue1316Tests` `_`
WHERE
	`_`.`ID` = @Item1
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Issue1316Tests`

