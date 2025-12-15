-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @BlobValue VarBinary(3) -- Binary
SET     @BlobValue = x'010203'

INSERT INTO "BlobClass"
(
	"Id",
	"BlobValue"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass" "t1"
WHERE
	"t1"."Id" = 1
LIMIT 1

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass" "t1"
WHERE
	"t1"."Id" = 1
LIMIT 1

