BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Task`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Task`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Task` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `TaskStage`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `TaskStage`
(
	`Id`     INT     NOT NULL,
	`TaskId` INT     NOT NULL,
	`Actual` BOOLEAN NOT NULL,

	CONSTRAINT `PK_TaskStage` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `Task`
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

INSERT INTO `Task`
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
DECLARE @TaskId Int32
SET     @TaskId = 1
DECLARE @Actual Bool -- Boolean
SET     @Actual = 1

INSERT INTO `TaskStage`
(
	`Id`,
	`TaskId`,
	`Actual`
)
VALUES
(
	@Id,
	@TaskId,
	@Actual
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	'Id',
	`it`.`Id`,
	SUM(`a_ActualStage`.`Id`)
FROM
	`Task` `it`
		LEFT JOIN `TaskStage` `a_ActualStage` ON `it`.`Id` = `a_ActualStage`.`TaskId` AND `a_ActualStage`.`Actual` = 1
GROUP BY
	`it`.`Id`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `TaskStage`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Task`

