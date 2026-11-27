-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO "GroupedTask"
(
	"Id"
)
VALUES
(
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO "GroupedTask"
(
	"Id"
)
VALUES
(
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @TaskId Int -- Int32
SET     @TaskId = 1
DECLARE @Actual TinyInt(1) -- Byte
SET     @Actual = 1

INSERT INTO "GroupedTaskStage"
(
	"Id",
	"TaskId",
	"Actual"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	'Id',
	"it"."Id",
	SUM("a_ActualStage"."Id")
FROM
	"GroupedTask" "it"
		LEFT JOIN "GroupedTaskStage" "a_ActualStage" ON "it"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = 1
GROUP BY
	"it"."Id"

