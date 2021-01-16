BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Issue1096Task`
(
	`Id`         INT          NOT NULL,
	`TargetName` VARCHAR(255)     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Issue1096TaskStage`
(
	`Id`     INT     NOT NULL,
	`TaskId` INT     NOT NULL,
	`Actual` BOOLEAN NOT NULL,

	CONSTRAINT `PK_Issue1096TaskStage` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @TaskId Int32
SET     @TaskId = 1
DECLARE @Actual UByte -- Boolean
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
-- MySql55 MySql.Official MySql

DROP TABLE `Issue1096TaskStage`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `Issue1096Task`

