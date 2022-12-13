BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Task')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Task"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Task')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Task"
			(
				"Id" Int NOT NULL,

				CONSTRAINT "PK_Task" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TaskStage')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TaskStage"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TaskStage')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TaskStage"
			(
				"Id"     Int     NOT NULL,
				"TaskId" Int     NOT NULL,
				"Actual" char(1) NOT NULL,

				CONSTRAINT "PK_TaskStage" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
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
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
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
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TaskId Integer -- Int32
SET     @TaskId = 1
DECLARE @Actual Char(1) -- String
SET     @Actual = '1'

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
-- Firebird3 Firebird

SELECT
	"t1"."Name",
	"t1"."Key_1",
	Sum(CASE
		WHEN "t1"."Id" IS NULL THEN NULL
		ELSE "t1"."Id"
	END)
FROM
	(
		SELECT
			'Id' as "Name",
			"selectParam"."Id" as "Key_1",
			"a_ActualStage"."Id"
		FROM
			"Task" "selectParam"
				LEFT JOIN "TaskStage" "a_ActualStage" ON "selectParam"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = 1
	) "t1"
GROUP BY
	"t1"."Name",
	"t1"."Key_1"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TaskStage')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TaskStage"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Task')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Task"';
END

