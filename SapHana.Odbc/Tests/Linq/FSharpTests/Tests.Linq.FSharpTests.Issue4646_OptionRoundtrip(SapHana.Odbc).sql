-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @IntValue Int -- Int32
SET     @IntValue = 42
DECLARE @StrValue NVarChar(5) -- String
SET     @StrValue = 'hello'

INSERT INTO "Issue4646Table"
(
	"Id",
	"IntValue",
	"StrValue"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @StrValue NVarChar -- String
SET     @StrValue = NULL

INSERT INTO "Issue4646Table"
(
	"Id",
	"IntValue",
	"StrValue"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id",
	"r"."IntValue",
	"r"."StrValue"
FROM
	"Issue4646Table" "r"
WHERE
	"r"."Id" = 1
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id",
	"r"."IntValue",
	"r"."StrValue"
FROM
	"Issue4646Table" "r"
WHERE
	"r"."Id" = 2
LIMIT 2

