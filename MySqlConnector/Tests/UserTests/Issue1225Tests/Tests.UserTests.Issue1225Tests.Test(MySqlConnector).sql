BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Task`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Task`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Task` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TaskStage`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TaskStage`
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
	`it_1`.`c1`,
	`it_1`.`Id`,
	(
		SELECT
			SUM(CASE
				WHEN `a_ActualStage`.`Id` IS NULL
					THEN NULL
				ELSE `a_ActualStage`.`Id`
			END)
		FROM
			`Task` `it_2`
				LEFT JOIN `TaskStage` `a_ActualStage` ON `it_2`.`Id` = `a_ActualStage`.`TaskId` AND `a_ActualStage`.`Actual` = 1
		WHERE
			`it_1`.`c1` = 'Id' AND `it_1`.`Id` = `it_2`.`Id`
	)
FROM
	(
		SELECT
			'Id' as `c1`,
			`it`.`Id`
		FROM
			`Task` `it`
	) `it_1`
GROUP BY
	`it_1`.`c1`,
	`it_1`.`Id`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TaskStage`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Task`

