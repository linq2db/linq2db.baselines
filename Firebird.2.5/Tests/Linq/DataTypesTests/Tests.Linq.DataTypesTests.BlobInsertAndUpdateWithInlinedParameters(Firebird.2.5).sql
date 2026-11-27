-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird
SELECT FIRST 1
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobValueEntity" "t1"
WHERE
	"t1"."Id" = 1

-- Firebird.2.5 Firebird
UPDATE
	"BlobValueEntity" "t1"
SET
	"BlobValue" = X'030201'
WHERE
	"t1"."Id" = 1

-- Firebird.2.5 Firebird
SELECT FIRST 1
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobValueEntity" "t1"
WHERE
	"t1"."Id" = 1

