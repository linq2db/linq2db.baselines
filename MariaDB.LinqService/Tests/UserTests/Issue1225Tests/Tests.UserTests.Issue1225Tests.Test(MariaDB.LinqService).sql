BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Task`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Task`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Task` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TaskStage`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TaskStage`
(
	`Id`     INT     NOT NULL,
	`TaskId` INT     NOT NULL,
	`Actual` BOOLEAN NOT NULL,

	CONSTRAINT `PK_TaskStage` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql

SELECT
	`it_1`.`c1`,
	`it_1`.`Id`,
	SUM(CASE
		WHEN `it_1`.`Id_1` IS NULL
			THEN NULL
		ELSE `it_1`.`Id_1`
	END)
FROM
	(
		SELECT
			'Id' as `c1`,
			`it`.`Id`,
			`a_ActualStage`.`Id` as `Id_1`
		FROM
			`Task` `it`
				LEFT JOIN `TaskStage` `a_ActualStage` ON `it`.`Id` = `a_ActualStage`.`TaskId` AND `a_ActualStage`.`Actual` = 1
	) `it_1`
GROUP BY
	`it_1`.`c1`,
	`it_1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TaskStage`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Task`

