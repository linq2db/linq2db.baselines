BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Table404One`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Table404One`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `Table404One`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO `Table404One`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Table404Two`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Table404Two`
(
	`Id`           INT NOT NULL,
	`Usage`        INT NOT NULL,
	`FirstTableId` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Usage_1 Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Int32
SET     @FirstTableId = 1

INSERT INTO `Table404Two`
(
	`Id`,
	`Usage`,
	`FirstTableId`
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Usage_1 Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Int32
SET     @FirstTableId = 1

INSERT INTO `Table404Two`
(
	`Id`,
	`Usage`,
	`FirstTableId`
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Usage_1 Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Int32
SET     @FirstTableId = 1

INSERT INTO `Table404Two`
(
	`Id`,
	`Usage`,
	`FirstTableId`
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Usage_1 Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Int32
SET     @FirstTableId = 2

INSERT INTO `Table404Two`
(
	`Id`,
	`Usage`,
	`FirstTableId`
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 5
DECLARE @Usage_1 Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Int32
SET     @FirstTableId = 2

INSERT INTO `Table404Two`
(
	`Id`,
	`Usage`,
	`FirstTableId`
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Usage_1 Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Int32
SET     @FirstTableId = 2

INSERT INTO `Table404Two`
(
	`Id`,
	`Usage`,
	`FirstTableId`
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Table404Two`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Table404One`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Table404One`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Table404One`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `Table404One`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO `Table404One`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Table404Two`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Table404Two`
(
	`Id`           INT NOT NULL,
	`Usage`        INT NOT NULL,
	`FirstTableId` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Usage_1 Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Int32
SET     @FirstTableId = 1

INSERT INTO `Table404Two`
(
	`Id`,
	`Usage`,
	`FirstTableId`
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Usage_1 Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Int32
SET     @FirstTableId = 1

INSERT INTO `Table404Two`
(
	`Id`,
	`Usage`,
	`FirstTableId`
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Usage_1 Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Int32
SET     @FirstTableId = 1

INSERT INTO `Table404Two`
(
	`Id`,
	`Usage`,
	`FirstTableId`
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Usage_1 Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Int32
SET     @FirstTableId = 2

INSERT INTO `Table404Two`
(
	`Id`,
	`Usage`,
	`FirstTableId`
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 5
DECLARE @Usage_1 Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Int32
SET     @FirstTableId = 2

INSERT INTO `Table404Two`
(
	`Id`,
	`Usage`,
	`FirstTableId`
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Usage_1 Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Int32
SET     @FirstTableId = 2

INSERT INTO `Table404Two`
(
	`Id`,
	`Usage`,
	`FirstTableId`
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Table404Two`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Table404One`

