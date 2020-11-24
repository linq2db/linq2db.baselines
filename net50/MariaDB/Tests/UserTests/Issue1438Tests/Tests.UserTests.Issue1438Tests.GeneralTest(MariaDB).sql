BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Issue1438`
(
	`Id`  INT     AUTO_INCREMENT NOT NULL,
	`Has` BOOLEAN                NOT NULL,

	CONSTRAINT `PK_Issue1438` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql.Official MySql
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
-- MariaDB MySql.Official MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @id_1 Int32
SET     @id_1 = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	`_`.`Id`,
	`_`.`Has`
FROM
	`Issue1438` `_`
WHERE
	`_`.`Id` = @id_1
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Issue1438`

