BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	'Id',
	`it`.`Id`,
	SUM(`a_ActualStage`.`Id`)
FROM
	`Task` `it`
		LEFT JOIN `TaskStage` `a_ActualStage` ON `it`.`Id` = `a_ActualStage`.`TaskId` AND `a_ActualStage`.`Actual` = 1
GROUP BY
	`it`.`Id`

