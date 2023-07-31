BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue681Table4`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue681Table4`
(
	`ID`    INT AUTO_INCREMENT NOT NULL,
	`Value` INT                NOT NULL,

	CONSTRAINT `PK_Issue681Table4` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Value Int32
SET     @Value = 10

INSERT INTO `testdata`.`Issue681Table4`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue681Table4`

