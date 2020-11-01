BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Task`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Task` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `TaskStage`
(
	`Id`     INT     NOT NULL,
	`TaskId` INT     NOT NULL,
	`Actual` BOOLEAN NOT NULL,

	CONSTRAINT `PK_TaskStage` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
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

BeforeExecute
-- MySql55 MySql.Official MySql

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
	`selectParam`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `TaskStage`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `Task`

