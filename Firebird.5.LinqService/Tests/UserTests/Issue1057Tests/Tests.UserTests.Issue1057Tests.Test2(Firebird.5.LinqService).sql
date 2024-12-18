BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Task')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Task"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Task')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Task"
			(
				"Id"         Int                                    NOT NULL,
				"TargetName" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Task" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TaskStage')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TaskStage"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TaskStage')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TaskStage"
			(
				"Id"     Int     NOT NULL,
				"TaskId" Int     NOT NULL,
				"Actual" BOOLEAN NOT NULL,

				CONSTRAINT "PK_TaskStage" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
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
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
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
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TaskId Integer -- Int32
SET     @TaskId = 1
DECLARE @Actual Boolean
SET     @Actual = TRUE

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
-- Firebird.5 Firebird4

SELECT
	"p"."Id",
	"p"."TargetName",
	"a_ActualStage"."Id"
FROM
	"Task" "p"
		LEFT JOIN "TaskStage" "a_ActualStage" ON "p"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = TRUE
WHERE
	"p"."TargetName" = 'bda.Requests' AND "p"."TargetName" IS NOT NULL

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."TargetName",
	"p"."Id",
	"a_ActualStage"."Id"
FROM
	"Task" "p"
		LEFT JOIN "TaskStage" "a_ActualStage" ON "p"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = TRUE
ORDER BY
	"p"."Id"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TaskStage')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TaskStage"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Task')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Task"';
END

