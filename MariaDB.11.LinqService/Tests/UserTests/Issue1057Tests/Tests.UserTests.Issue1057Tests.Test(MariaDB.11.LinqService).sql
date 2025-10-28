BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
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
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
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
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
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
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`p`.`Id`,
	`p`.`TargetName`,
	`a_ActualStage`.`Id`
FROM
	`Task` `p`
		LEFT JOIN `TaskStage` `a_ActualStage` ON `p`.`Id` = `a_ActualStage`.`TaskId` AND `a_ActualStage`.`Actual` = 1
WHERE
	`p`.`TargetName` = 'bda.Requests'

