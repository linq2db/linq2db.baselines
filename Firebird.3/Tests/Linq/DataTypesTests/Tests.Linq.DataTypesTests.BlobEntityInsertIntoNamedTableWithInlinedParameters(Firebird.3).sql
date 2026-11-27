-- Firebird.3 Firebird3
INSERT INTO "BlobValueEntity"
(
	"Id",
	"BlobValue"
)
VALUES
(
	1,
	X'010203'
)

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobValueEntity" "t1"
WHERE
	"t1"."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobValueEntity" "t1"
WHERE
	"t1"."Id" = 1
FETCH NEXT 1 ROWS ONLY

