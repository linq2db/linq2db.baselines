-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringEnumNullable NVarChar -- String
SET     @StringEnumNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringEnumNullable"
)
VALUES
(
	:"Id",
	:"StringEnumNullable"
)

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StringEnumNullable NVarChar(2) -- String
SET     @StringEnumNullable = '40'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringEnumNullable"
)
VALUES
(
	:"Id",
	:"StringEnumNullable"
)

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."StringEnumNullable"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

