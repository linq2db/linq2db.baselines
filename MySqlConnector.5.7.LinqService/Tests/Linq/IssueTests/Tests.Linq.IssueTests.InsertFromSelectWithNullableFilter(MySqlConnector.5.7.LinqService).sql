BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `InsertIssueTest`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `InsertIssueTest`
(
	`ID`          SMALLINT NOT NULL,
	`intDataType` INT          NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int16
SET     @ID = 0
DECLARE @intDataType Int32
SET     @intDataType = 0

INSERT INTO `InsertIssueTest`
(
	`ID`,
	`intDataType`
)
VALUES
(
	@ID,
	@intDataType
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int16
SET     @ID = 0
DECLARE @intDataType Int32
SET     @intDataType = 0

INSERT INTO `InsertIssueTest`
(
	`ID`,
	`intDataType`
)
VALUES
(
	@ID,
	@intDataType
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int16
SET     @ID = 1234
DECLARE @intDataType Int32
SET     @intDataType = 1234

INSERT INTO `InsertIssueTest`
(
	`ID`,
	`intDataType`
)
VALUES
(
	@ID,
	@intDataType
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int16
SET     @ID = 1234
DECLARE @intDataType Int32
SET     @intDataType = 1234

INSERT INTO `InsertIssueTest`
(
	`ID`,
	`intDataType`
)
VALUES
(
	@ID,
	@intDataType
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `InsertIssueTest`
(
	`ID`,
	`intDataType`
)
SELECT
	123,
	`t2`.`ID`
FROM
	(
		SELECT DISTINCT
			`a_Association`.`ID`
		FROM
			`InsertIssueTest` `t1`
				INNER JOIN `InsertIssueTest` `a_Association` ON `t1`.`ID` = `a_Association`.`intDataType` AND `a_Association`.`intDataType` IS NOT NULL
		WHERE
			1 = 0
	) `t2`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @cond Int16
SET     @cond = 1234

INSERT INTO `InsertIssueTest`
(
	`ID`,
	`intDataType`
)
SELECT
	123,
	`t2`.`ID`
FROM
	(
		SELECT DISTINCT
			`a_Association`.`ID`
		FROM
			`InsertIssueTest` `t1`
				INNER JOIN `InsertIssueTest` `a_Association` ON `t1`.`ID` = `a_Association`.`intDataType` AND `a_Association`.`intDataType` IS NOT NULL
		WHERE
			`t1`.`ID` = @cond
	) `t2`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ID`,
	`t1`.`intDataType`
FROM
	`InsertIssueTest` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `InsertIssueTest`

