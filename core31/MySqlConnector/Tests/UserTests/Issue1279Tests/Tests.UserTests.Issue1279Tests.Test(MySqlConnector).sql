BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Issue1279Table`
(
	`Id`      INT  AUTO_INCREMENT NOT NULL,
	`CharFld` CHAR                NOT NULL,

	CONSTRAINT `PK_Issue1279Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @CharFld String -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO `Issue1279Table`
(
	`CharFld`
)
VALUES
(
	@CharFld
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`t1`.`Id`,
	`t1`.`CharFld`
FROM
	`Issue1279Table` `t1`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Issue1279Table`

