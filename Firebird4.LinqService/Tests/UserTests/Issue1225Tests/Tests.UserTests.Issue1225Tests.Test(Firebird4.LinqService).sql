BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Task')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Task"';
END

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TaskStage')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TaskStage"';
END

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Task"
(
	"Id"
)
VALUES
(
	CAST(@Id AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "Task"
(
	"Id"
)
VALUES
(
	CAST(@Id AS Int)
)

BeforeExecute
-- Firebird4 Firebird
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
	CAST(@Id AS Int),
	CAST(@TaskId AS Int),
	CAST(@Actual AS char(1))
)

BeforeExecute
-- Firebird4 Firebird

SELECT
	"it_1"."c1",
	"it_1"."Id",
	SUM(CASE
		WHEN "it_1"."Id_1" IS NULL THEN NULL
		ELSE "it_1"."Id_1"
	END)
FROM
	(
		SELECT
			'Id' as "c1",
			"it"."Id",
			"a_ActualStage"."Id" as "Id_1"
		FROM
			"Task" "it"
				LEFT JOIN "TaskStage" "a_ActualStage" ON "it"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = 1
	) "it_1"
GROUP BY
	"it_1"."c1",
	"it_1"."Id"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TaskStage')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TaskStage"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Task')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Task"';
END

