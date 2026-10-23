-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Code Int -- Int32
SET     @Code = 100
DECLARE @Val Int -- Int32
SET     @Val = 10

INSERT INTO "SUG001NonPkKey"
(
	"Id",
	"Code",
	"Val"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
UPDATE
	"SUG001NonPkKey" "t1"
SET
	"Id" = 2,
	"Val" = 20
WHERE
	"t1"."Code" = 100

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Code",
	"t1"."Val"
FROM
	"SUG001NonPkKey" "t1"

