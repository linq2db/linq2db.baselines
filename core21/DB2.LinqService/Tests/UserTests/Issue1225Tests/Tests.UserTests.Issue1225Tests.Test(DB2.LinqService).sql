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
	"t1"."c3",
	"t1"."Id",
	Sum(CASE
		WHEN "t1"."Id_1" IS NULL THEN NULL
		ELSE "t1"."Id_1"
	END)
FROM
	(
		SELECT
			'Id' as "c1",
			"selectParam"."Id" as "c2",
			'Id' as "c3",
			"selectParam"."Id",
			"a_ActualStage"."Id" as "Id_1"
		FROM
			"Task" "selectParam"
				LEFT JOIN "TaskStage" "a_ActualStage" ON "selectParam"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = 1
	) "t1"
GROUP BY
	"t1"."c2",
	"t1"."c3",
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "TaskStage"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Task"

