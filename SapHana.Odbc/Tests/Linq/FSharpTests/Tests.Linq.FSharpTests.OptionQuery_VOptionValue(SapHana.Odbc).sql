-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'a'

INSERT INTO "VOptRow"
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
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar -- String
SET     @Name = NULL

INSERT INTO "VOptRow"
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
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'a'

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"VOptRow" "x"
WHERE
	"x"."Name" = ?

