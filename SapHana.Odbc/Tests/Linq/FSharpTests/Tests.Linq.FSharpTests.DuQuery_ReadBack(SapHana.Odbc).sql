-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Key Int -- Int32
SET     @Key = 10

INSERT INTO "DuRow"
(
	"Id",
	"Key"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Key Int -- Int32
SET     @Key = 20

INSERT INTO "DuRow"
(
	"Id",
	"Key"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"x"."Key"
FROM
	"DuRow" "x"
ORDER BY
	"x"."Id"

