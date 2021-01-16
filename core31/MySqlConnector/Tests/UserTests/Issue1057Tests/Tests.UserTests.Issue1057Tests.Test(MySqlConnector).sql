﻿BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Task`
(
	`Id`         INT          NOT NULL,
	`TargetName` VARCHAR(255)     NULL,

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
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO `Task`
(
	`Id`,
	`TargetName`
)
VALUES
(
	@Id,
	@TargetName
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @TargetName VarChar(4) -- String
SET     @TargetName = 'None'

INSERT INTO `Task`
(
	`Id`,
	`TargetName`
)
VALUES
(
	@Id,
	@TargetName
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
	`p`.`Id`,
	`p`.`TargetName`,
	`a_ActualStage`.`Id`
FROM
	`Task` `p`
		LEFT JOIN `TaskStage` `a_ActualStage` ON `p`.`Id` = `a_ActualStage`.`TaskId` AND `a_ActualStage`.`Actual` = 1
WHERE
	`p`.`TargetName` = 'bda.Requests'

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `TaskStage`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Task`

