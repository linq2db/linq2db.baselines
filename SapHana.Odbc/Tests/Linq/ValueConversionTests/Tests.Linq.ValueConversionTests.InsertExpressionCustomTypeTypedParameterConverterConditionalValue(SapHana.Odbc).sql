-- SapHana.Odbc SapHanaOdbc
DECLARE @Field1 NVarChar -- String
SET     @Field1 = NULL

INSERT INTO "CustomFieldRecord"
(
	"Id",
	"Field1"
)
VALUES
(
	1,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Field1 NVarChar -- String
SET     @Field1 = NULL

INSERT INTO "CustomFieldRecord"
(
	"Id",
	"Field1"
)
VALUES
(
	2,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Field1 NVarChar(4) -- String
SET     @Field1 = 'test'

INSERT INTO "CustomFieldRecord"
(
	"Id",
	"Field1"
)
VALUES
(
	3,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Field1"
FROM
	"CustomFieldRecord" "t1"
ORDER BY
	"t1"."Id"

