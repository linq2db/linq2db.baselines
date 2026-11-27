-- SapHana.Native SapHana
INSERT INTO "BlobValueEntity"
(
	"Id",
	"BlobValue"
)
VALUES
(
	1,
	x'010203'
)

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobValueEntity" "t1"
WHERE
	"t1"."Id" = 1
LIMIT 1

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobValueEntity" "t1"
WHERE
	"t1"."Id" = 1
LIMIT 1

