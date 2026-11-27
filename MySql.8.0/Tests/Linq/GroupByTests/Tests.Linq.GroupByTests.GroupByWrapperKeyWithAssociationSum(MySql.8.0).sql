-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `GroupedTask`
(
	`Id`
)
VALUES
(
	@Id
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO `GroupedTask`
(
	`Id`
)
VALUES
(
	@Id
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @TaskId Int32
SET     @TaskId = 1
DECLARE @Actual UByte -- Boolean
SET     @Actual = 1

INSERT INTO `GroupedTaskStage`
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'Id',
	`it`.`Id`,
	SUM(`a_ActualStage`.`Id`)
FROM
	`GroupedTask` `it`
		LEFT JOIN `GroupedTaskStage` `a_ActualStage` ON `it`.`Id` = `a_ActualStage`.`TaskId` AND `a_ActualStage`.`Actual` = 1
GROUP BY
	`it`.`Id`

