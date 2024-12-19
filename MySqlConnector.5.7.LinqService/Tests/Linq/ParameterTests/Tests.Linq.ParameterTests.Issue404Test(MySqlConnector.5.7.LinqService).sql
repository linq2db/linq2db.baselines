BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Table404One`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Table404One`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Table404Two`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Table404Two`
(
	`Id`           INT NOT NULL,
	`Usage`        INT NOT NULL,
	`FirstTableId` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @cond Int32
SET     @cond = 0

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
	`d`.`Usage` = @cond

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @cond Int32
SET     @cond = 1

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
	`d`.`Usage` = @cond

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Table404Two`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Table404One`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Table404One`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Table404One`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Table404Two`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Table404Two`
(
	`Id`           INT NOT NULL,
	`Usage`        INT NOT NULL,
	`FirstTableId` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @cond Int32
SET     @cond = 0

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
	`d`.`Usage` = @cond

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @cond Int32
SET     @cond = 1

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
	`d`.`Usage` = @cond

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Table404Two`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Table404One`

