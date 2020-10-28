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
	`t1`.`c3`,
	`t1`.`Id`,
	Sum(CASE
		WHEN `t1`.`Id_1` IS NULL THEN NULL
		ELSE `t1`.`Id_1`
	END)
FROM
	(
		SELECT
			'Id' as `c1`,
			`selectParam`.`Id` as `c2`,
			'Id' as `c3`,
			`selectParam`.`Id`,
			`a_ActualStage`.`Id` as `Id_1`
		FROM
			`Task` `selectParam`
				LEFT JOIN `TaskStage` `a_ActualStage` ON `selectParam`.`Id` = `a_ActualStage`.`TaskId` AND `a_ActualStage`.`Actual` = 1
	) `t1`
GROUP BY
	`t1`.`c2`,
	`t1`.`c3`,
	`t1`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `TaskStage`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `Task`

