﻿BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Table404One`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Table404One`
(
	`Id`
)
VALUES
(1),
(2)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Table404Two`
(
	`Id`           INT NOT NULL,
	`Usage`        INT NOT NULL,
	`FirstTableId` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`key_data_result`.`Id`,
	`_v`.`Id`,
	`_v`.`Usage`,
	`_v`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			(
				SELECT
					`c_1`.`Id`
				FROM
					`Table404One` `c_1`
				LIMIT @take
			) `t1`
	) `key_data_result`
		INNER JOIN `Table404Two` `_v` ON `_v`.`FirstTableId` = `key_data_result`.`Id`

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1
DECLARE @Usage_2 Int32
SET     @Usage_2 = 0

SELECT
	`key_data_result`.`Id`,
	`_v`.`Id`,
	`_v`.`Usage`,
	`_v`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			(
				SELECT
					`c_1`.`Id`
				FROM
					`Table404One` `c_1`
				LIMIT @take
			) `t1`
	) `key_data_result`
		INNER JOIN `Table404Two` `_v` ON `_v`.`Usage` = @Usage_2 AND `_v`.`FirstTableId` = `key_data_result`.`Id`

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1
DECLARE @Usage_2 Int32
SET     @Usage_2 = 1

SELECT
	`key_data_result`.`Id`,
	`_v`.`Id`,
	`_v`.`Usage`,
	`_v`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			(
				SELECT
					`c_1`.`Id`
				FROM
					`Table404One` `c_1`
				LIMIT @take
			) `t1`
	) `key_data_result`
		INNER JOIN `Table404Two` `_v` ON `_v`.`Usage` = @Usage_2 AND `_v`.`FirstTableId` = `key_data_result`.`Id`

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Table404Two`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Table404One`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Table404One`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Table404One`
(
	`Id`
)
VALUES
(1),
(2)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Table404Two`
(
	`Id`           INT NOT NULL,
	`Usage`        INT NOT NULL,
	`FirstTableId` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`key_data_result`.`Id`,
	`_v`.`Id`,
	`_v`.`Usage`,
	`_v`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			(
				SELECT
					`c_1`.`Id`
				FROM
					`Table404One` `c_1`
				LIMIT @take
			) `t1`
	) `key_data_result`
		INNER JOIN `Table404Two` `_v` ON `_v`.`FirstTableId` = `key_data_result`.`Id`

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1
DECLARE @Usage_2 Int32
SET     @Usage_2 = 0

SELECT
	`key_data_result`.`Id`,
	`_v`.`Id`,
	`_v`.`Usage`,
	`_v`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			(
				SELECT
					`c_1`.`Id`
				FROM
					`Table404One` `c_1`
				LIMIT @take
			) `t1`
	) `key_data_result`
		INNER JOIN `Table404Two` `_v` ON `_v`.`Usage` = @Usage_2 AND `_v`.`FirstTableId` = `key_data_result`.`Id`

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1
DECLARE @Usage_2 Int32
SET     @Usage_2 = 1

SELECT
	`key_data_result`.`Id`,
	`_v`.`Id`,
	`_v`.`Usage`,
	`_v`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			(
				SELECT
					`c_1`.`Id`
				FROM
					`Table404One` `c_1`
				LIMIT @take
			) `t1`
	) `key_data_result`
		INNER JOIN `Table404Two` `_v` ON `_v`.`Usage` = @Usage_2 AND `_v`.`FirstTableId` = `key_data_result`.`Id`

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`Id`
FROM
	`Table404One` `c_1`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Table404Two`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Table404One`

