-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar -- String
SET     @Name = NULL

INSERT INTO "SkipOnInsertFluent"
(
	"Id",
	"Name"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"SkipOnInsertFluent" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

