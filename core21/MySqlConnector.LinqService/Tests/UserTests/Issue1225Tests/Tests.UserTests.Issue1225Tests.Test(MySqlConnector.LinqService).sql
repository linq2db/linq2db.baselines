BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Task`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Task` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `TaskStage`
(
	`Id`     INT     NOT NULL,
	`TaskId` INT     NOT NULL,
	`Actual` BOOLEAN NOT NULL,

	CONSTRAINT `PK_TaskStage` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql

SELECT
	'Id',
	`selectParam`.`Id`,
	Sum(CASE
		WHEN `a_ActualStage`.`Id` IS NULL
			THEN NULL
		ELSE `a_ActualStage`.`Id`
	END)
FROM
	`Task` `selectParam`
		LEFT JOIN `TaskStage` `a_ActualStage` ON `selectParam`.`Id` = `a_ActualStage`.`TaskId` AND `a_ActualStage`.`Actual` = 1
GROUP BY
	`selectParam`.`Id`,
	`selectParam`.`Id`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `TaskStage`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Task`

