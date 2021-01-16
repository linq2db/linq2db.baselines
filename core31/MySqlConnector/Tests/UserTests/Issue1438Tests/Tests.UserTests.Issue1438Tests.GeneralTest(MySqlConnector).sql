BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Issue1438`
(
	`Id`  INT     AUTO_INCREMENT NOT NULL,
	`Has` BOOLEAN                NOT NULL,

	CONSTRAINT `PK_Issue1438` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Issue1438`

