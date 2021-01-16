BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Task"
(
	"Id"         Int           NOT NULL,
	"TargetName" NVarChar(255)     NULL,

	CONSTRAINT "PK_Task" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "TaskStage"
(
	"Id"     Int  NOT NULL,
	"TaskId" Int  NOT NULL,
	"Actual" char NOT NULL,

	CONSTRAINT "PK_TaskStage" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "Task"
(
	"Id",
	"TargetName"
)
VALUES
(
	@Id,
	@TargetName
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @TargetName VarChar(4) -- String
SET     @TargetName = 'None'

INSERT INTO "Task"
(
	"Id",
	"TargetName"
)
VALUES
(
	@Id,
	@TargetName
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @TaskId Integer(4) -- Int32
SET     @TaskId = 1
DECLARE @Actual SmallInt(4) -- Int16
SET     @Actual = 1

INSERT INTO "TaskStage"
(
	"Id",
	"TaskId",
	"Actual"
)
VALUES
(
	@Id,
	@TaskId,
	@Actual
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "TaskStage"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Task"

