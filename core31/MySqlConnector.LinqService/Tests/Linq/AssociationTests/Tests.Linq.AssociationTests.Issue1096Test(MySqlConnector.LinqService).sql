BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Issue1096Task`
(
	`Id`         INT          NOT NULL,
	`TargetName` VARCHAR(255)     NULL
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Issue1096TaskStage`
(
	`Id`     INT     NOT NULL,
	`TaskId` INT     NOT NULL,
	`Actual` BOOLEAN NOT NULL,

	CONSTRAINT `PK_Issue1096TaskStage` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO `Issue1096Task`
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
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO `Issue1096Task`
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
SET     @Id = 1
DECLARE @TaskId Int32
SET     @TaskId = 1
DECLARE @Actual Bool -- Boolean
SET     @Actual = 1

INSERT INTO `Issue1096TaskStage`
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
	`t1`.`Id`, 
	`t1`.`TargetName`, 
	`t1`.`Id_1`, 
	`t1`.`TaskId`, 
	`t1`.`Actual`
FROM
	( 
		SELECT DISTINCT 
			`t`.`Id`, 
			`t`.`TargetName`, 
			`a_ActualStage`.`Id` as `Id_1`, 
			`a_ActualStage`.`TaskId`, 
			`a_ActualStage`.`Actual`
		FROM
			`Issue1096Task` `t`
				LEFT JOIN `Issue1096TaskStage` `a_ActualStage` ON `t`.`Id` = `a_ActualStage`.`TaskId` AND `a_ActualStage`.`Actual` = 1
	) `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Issue1096TaskStage`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Issue1096Task`

