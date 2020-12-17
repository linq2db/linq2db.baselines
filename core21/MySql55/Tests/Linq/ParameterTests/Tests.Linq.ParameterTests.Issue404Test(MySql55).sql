BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Table404One`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `Table404One`
(
	`Id`
)
VALUES
(1),
(2)

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Table404Two`
(
	`Id`           INT NOT NULL,
	`Usage`        INT NOT NULL,
	`FirstTableId` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `Table404Two`
(
	`Id`,
	`Usage`,
	`FirstTableId`
)
VALUES
(1,0,1),
(2,0,1),
(3,1,1),
(4,0,2),
(5,1,2),
(6,1,2)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`key_data_result`.`Id`,
	`_v`.`Id`,
	`_v`.`Usage`,
	`_v`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`c_1`.`Id`
		FROM
			`Table404One` `c_1`
	) `key_data_result`
		INNER JOIN `Table404Two` `_v` ON `_v`.`FirstTableId` = `key_data_result`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Usage_1 Int32
SET     @Usage_1 = 0

SELECT
	`key_data_result`.`Id`,
	`_v`.`Id`,
	`_v`.`Usage`,
	`_v`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`c_1`.`Id`
		FROM
			`Table404One` `c_1`
	) `key_data_result`
		INNER JOIN `Table404Two` `_v` ON `_v`.`Usage` = @Usage_1 AND `_v`.`FirstTableId` = `key_data_result`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Usage_1 Int32
SET     @Usage_1 = 1

SELECT
	`key_data_result`.`Id`,
	`_v`.`Id`,
	`_v`.`Usage`,
	`_v`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`c_1`.`Id`
		FROM
			`Table404One` `c_1`
	) `key_data_result`
		INNER JOIN `Table404Two` `_v` ON `_v`.`Usage` = @Usage_1 AND `_v`.`FirstTableId` = `key_data_result`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Table404Two`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Table404One`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Table404One`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `Table404One`
(
	`Id`
)
VALUES
(1),
(2)

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Table404Two`
(
	`Id`           INT NOT NULL,
	`Usage`        INT NOT NULL,
	`FirstTableId` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `Table404Two`
(
	`Id`,
	`Usage`,
	`FirstTableId`
)
VALUES
(1,0,1),
(2,0,1),
(3,1,1),
(4,0,2),
(5,1,2),
(6,1,2)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`key_data_result`.`Id`,
	`_v`.`Id`,
	`_v`.`Usage`,
	`_v`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`c_1`.`Id`
		FROM
			`Table404One` `c_1`
	) `key_data_result`
		INNER JOIN `Table404Two` `_v` ON `_v`.`FirstTableId` = `key_data_result`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Usage_1 Int32
SET     @Usage_1 = 0

SELECT
	`key_data_result`.`Id`,
	`_v`.`Id`,
	`_v`.`Usage`,
	`_v`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`c_1`.`Id`
		FROM
			`Table404One` `c_1`
	) `key_data_result`
		INNER JOIN `Table404Two` `_v` ON `_v`.`Usage` = @Usage_1 AND `_v`.`FirstTableId` = `key_data_result`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Usage_1 Int32
SET     @Usage_1 = 1

SELECT
	`key_data_result`.`Id`,
	`_v`.`Id`,
	`_v`.`Usage`,
	`_v`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`c_1`.`Id`
		FROM
			`Table404One` `c_1`
	) `key_data_result`
		INNER JOIN `Table404Two` `_v` ON `_v`.`Usage` = @Usage_1 AND `_v`.`FirstTableId` = `key_data_result`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Table404Two`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Table404One`

