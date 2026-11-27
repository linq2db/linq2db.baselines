-- SapHana.Odbc SapHanaOdbc
INSERT INTO "CustomFieldRecord"
(
	"Id",
	"Field1"
)
VALUES
(
	1,
	NULL
)

-- SapHana.Odbc SapHanaOdbc
INSERT INTO "CustomFieldRecord"
(
	"Id",
	"Field1"
)
VALUES
(
	2,
	NULL
)

-- SapHana.Odbc SapHanaOdbc
INSERT INTO "CustomFieldRecord"
(
	"Id",
	"Field1"
)
VALUES
(
	3,
	'test'
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Field1"
FROM
	"CustomFieldRecord" "t1"
ORDER BY
	"t1"."Id"

