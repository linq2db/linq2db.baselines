BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue681Table`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_Issue681Table` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table4`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue681Table4`
(
	`ID`    INT AUTO_INCREMENT NOT NULL,
	`Value` INT                NOT NULL,

	CONSTRAINT `PK_Issue681Table4` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 5
DECLARE @Value Int32
SET     @Value = 10

INSERT INTO `Issue681Table`
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
-- MySqlConnector MySql
DECLARE @Value Int32
SET     @Value = 123
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	`Issue681Table` `t1`
SET
	`t1`.`Value` = @Value
WHERE
	`t1`.`ID` = @ID

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`Issue681Table` `t1`

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 5

DELETE   `t1`
FROM
	`Issue681Table` `t1`
WHERE
	`t1`.`ID` = @ID

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 5
DECLARE @Value Int32
SET     @Value = 123

INSERT INTO `Issue681Table`
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
-- MySqlConnector MySql
DECLARE @Value Int32
SET     @Value = 10

INSERT INTO `Issue681Table4`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Issue681Table2`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_Issue681Table2` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Issue681Table2`

BeforeExecute
-- MySqlConnector MySql (asynchronously)

CREATE TABLE `Issue681Table3`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_Issue681Table3` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql (asynchronously)

DROP TABLE `Issue681Table3`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table4`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table`

