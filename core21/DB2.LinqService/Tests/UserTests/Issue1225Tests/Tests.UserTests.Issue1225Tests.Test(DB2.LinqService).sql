BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Task"
(
	"Id" Int NOT NULL,

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

INSERT INTO "Task"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO "Task"
(
	"Id"
)
VALUES
(
	@Id
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

SELECT
	'Id',
	"selectParam"."Id",
	Sum(CASE
		WHEN "a_ActualStage"."Id" IS NULL
			THEN NULL
		ELSE "a_ActualStage"."Id"
	END)
FROM
	"Task" "selectParam"
		LEFT JOIN "TaskStage" "a_ActualStage" ON "selectParam"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = 1
GROUP BY
	"selectParam"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "TaskStage"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Task"

