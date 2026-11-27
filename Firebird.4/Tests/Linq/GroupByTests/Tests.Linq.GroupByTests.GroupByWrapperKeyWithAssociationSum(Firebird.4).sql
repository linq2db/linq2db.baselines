-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "GroupedTask"
(
	"Id"
)
VALUES
(
	@Id
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "GroupedTask"
(
	"Id"
)
VALUES
(
	@Id
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TaskId Integer -- Int32
SET     @TaskId = 1
DECLARE @Actual Boolean
SET     @Actual = TRUE

INSERT INTO "GroupedTaskStage"
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

-- Firebird.4 Firebird4
SELECT
	'Id',
	"it"."Id",
	SUM("a_ActualStage"."Id")
FROM
	"GroupedTask" "it"
		LEFT JOIN "GroupedTaskStage" "a_ActualStage" ON "it"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = TRUE
GROUP BY
	"it"."Id"

