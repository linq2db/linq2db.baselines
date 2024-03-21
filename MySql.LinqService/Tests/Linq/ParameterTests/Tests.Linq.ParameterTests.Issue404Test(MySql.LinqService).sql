﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Table404One`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Table404One`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Table404Two`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Table404Two`
(
	`Id`           INT NOT NULL,
	`Usage`        INT NOT NULL,
	`FirstTableId` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Usage Int32
SET     @Usage = 0
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Usage Int32
SET     @Usage = 0
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Usage Int32
SET     @Usage = 1
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Usage Int32
SET     @Usage = 0
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 5
DECLARE @Usage Int32
SET     @Usage = 1
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Usage Int32
SET     @Usage = 1
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			`Table404One` `t1`
	) `m_1`
		INNER JOIN `Table404Two` `d` ON `m_1`.`Id` = `d`.`FirstTableId`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Usage Int32
SET     @Usage = 0

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			`Table404One` `t1`
	) `m_1`
		INNER JOIN `Table404Two` `d` ON `m_1`.`Id` = `d`.`FirstTableId`
WHERE
	`d`.`Usage` = @Usage

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Usage Int32
SET     @Usage = 1

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			`Table404One` `t1`
	) `m_1`
		INNER JOIN `Table404Two` `d` ON `m_1`.`Id` = `d`.`FirstTableId`
WHERE
	`d`.`Usage` = @Usage

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Table404Two`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Table404One`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Table404One`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Table404One`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Table404Two`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Table404Two`
(
	`Id`           INT NOT NULL,
	`Usage`        INT NOT NULL,
	`FirstTableId` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Usage Int32
SET     @Usage = 0
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Usage Int32
SET     @Usage = 0
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Usage Int32
SET     @Usage = 1
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Usage Int32
SET     @Usage = 0
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 5
DECLARE @Usage Int32
SET     @Usage = 1
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Usage Int32
SET     @Usage = 1
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			`Table404One` `t1`
	) `m_1`
		INNER JOIN `Table404Two` `d` ON `m_1`.`Id` = `d`.`FirstTableId`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Usage Int32
SET     @Usage = 0

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			`Table404One` `t1`
	) `m_1`
		INNER JOIN `Table404Two` `d` ON `m_1`.`Id` = `d`.`FirstTableId`
WHERE
	`d`.`Usage` = @Usage

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Usage Int32
SET     @Usage = 1

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			`Table404One` `t1`
	) `m_1`
		INNER JOIN `Table404Two` `d` ON `m_1`.`Id` = `d`.`FirstTableId`
WHERE
	`d`.`Usage` = @Usage

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Table404Two`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Table404One`

