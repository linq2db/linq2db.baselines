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

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Value Int32
SET     @Value = 123
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	`testdata`.`Issue681Table` `t1`
SET
	`t1`.`Value` = @Value
WHERE
	`t1`.`ID` = @ID

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`testdata`.`Issue681Table` `t1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 5

DELETE   `t1`
FROM
	`testdata`.`Issue681Table` `t1`
WHERE
	`t1`.`ID` = @ID

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 5
DECLARE @Value Int32
SET     @Value = 123

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

CREATE TABLE `testdata`.`Issue681Table2`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_Issue681Table2` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `testdata`.`Issue681Table2`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue681Table4`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue681Table`

