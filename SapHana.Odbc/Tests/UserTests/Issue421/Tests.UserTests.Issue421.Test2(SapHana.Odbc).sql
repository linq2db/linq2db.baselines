-- SapHana.Odbc SapHanaOdbc

INSERT INTO "BlobClass"
(
	"Id",
	"BlobValue"
)
VALUES
(
	1,
	x'010203'
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

UPDATE
	"BlobClass" "t1"
SET
	"BlobValue" = x'030201'
WHERE
	"t1"."Id" = 1

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass" "t1"
WHERE
	"t1"."Id" = 1
LIMIT 1

