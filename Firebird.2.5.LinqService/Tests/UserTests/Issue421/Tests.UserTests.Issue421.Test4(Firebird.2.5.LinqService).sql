BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "BlobClass17"
(
	"Id",
	"BlobValue"
)
VALUES
(
	1,
	X'010203'
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass17" "t1"
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass17" "t1"
WHERE
	"t1"."Id" = 1

