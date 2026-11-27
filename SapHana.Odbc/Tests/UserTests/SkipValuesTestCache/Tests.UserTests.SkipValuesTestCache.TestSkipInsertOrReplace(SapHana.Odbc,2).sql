-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Int -- Int32
SET     @Age = 2

UPSERT "SkipOnInsertCache"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	?,
	?,
	?
)
WITH PRIMARY KEY

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
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Int -- Int32
SET     @Age = 2

UPSERT "SkipOnInsertCache"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	?,
	?,
	?
)
WITH PRIMARY KEY

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

