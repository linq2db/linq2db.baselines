-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @TaskId Int32
SET     @TaskId = 1
DECLARE @Actual UByte -- Boolean
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	'Id',
	`it`.`Id`,
	SUM(`a_ActualStage`.`Id`)
FROM
	`Task` `it`
		LEFT JOIN `TaskStage` `a_ActualStage` ON `it`.`Id` = `a_ActualStage`.`TaskId` AND `a_ActualStage`.`Actual` = 1
GROUP BY
	`it`.`Id`

