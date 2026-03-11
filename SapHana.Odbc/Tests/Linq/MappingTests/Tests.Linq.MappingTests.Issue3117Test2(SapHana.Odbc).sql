-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 5

INSERT INTO "User"
(
	"Id"
)
VALUES
(
	?
)

-- SapHana.Odbc SapHanaOdbc

SELECT CURRENT_IDENTITY_VALUE() FROM DUMMY

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"User" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @userId Int -- Int32
SET     @userId = 5

SELECT
	"u"."Id"
FROM
	"User" "u"
WHERE
	"u"."Id" = ?
LIMIT 1

-- SapHana.Odbc SapHanaOdbc

SELECT
	"u"."Id"
FROM
	"User" "u"
WHERE
	"u"."Id" IN (5)
LIMIT 1

