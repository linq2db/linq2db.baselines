BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Issue1438`
(
	`Id`  INT     AUTO_INCREMENT NOT NULL,
	`Has` BOOLEAN                NOT NULL,

	CONSTRAINT `PK_Issue1438` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Has UByte -- Boolean
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
-- MySql55 MySql.Official MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `Issue1438`

