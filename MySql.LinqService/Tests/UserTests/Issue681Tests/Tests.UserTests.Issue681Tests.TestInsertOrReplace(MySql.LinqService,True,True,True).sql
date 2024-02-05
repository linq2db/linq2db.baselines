BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue681Table`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue681Table`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_Issue681Table` PRIMARY KEY CLUSTERED (`ID`)
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
DECLARE @ID Int32
SET     @ID = 5
DECLARE @Value Int32
SET     @Value = 10

INSERT INTO `testdata`.`Issue681Table`
(
	`ID`,
	`Value`
)
VALUES
(
	@ID,
	@Value
)
ON DUPLICATE KEY UPDATE
	`Value` = @Value

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 5
DECLARE @Value Int32
SET     @Value = 10

INSERT INTO `testdata`.`Issue681Table`
(
	`ID`,
	`Value`
)
VALUES
(
	@ID,
	@Value
)
ON DUPLICATE KEY UPDATE
	`Value` = @Value

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue681Table`

