BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue1096Task"
(
	"Id"         Int           NOT NULL,
	"TargetName" NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue1096TaskStage"
(
	"Id"     Int      NOT NULL,
	"TaskId" Int      NOT NULL,
	"Actual" smallint NOT NULL,

	CONSTRAINT "PK_Issue1096TaskStage" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "Issue1096Task"
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
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "Issue1096Task"
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
SET     @Id = 1
DECLARE @TaskId Integer(4) -- Int32
SET     @TaskId = 1
DECLARE @Actual SmallInt(4) -- Int16
SET     @Actual = 1

INSERT INTO "Issue1096TaskStage"
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

DROP TABLE "Issue1096TaskStage"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Issue1096Task"

