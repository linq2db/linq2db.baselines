-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO "SkipOnInsertCache"
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
	"SkipOnInsertCache" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"SkipOnInsertCache" "t1"
SET
	"Name" = ?
WHERE
	"t1"."Id" = ?

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"SkipOnInsertCache" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

