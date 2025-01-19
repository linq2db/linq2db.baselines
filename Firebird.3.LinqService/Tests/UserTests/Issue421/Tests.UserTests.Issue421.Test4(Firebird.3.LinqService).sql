BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass17" "t1"
WHERE
	"t1"."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass17" "t1"
WHERE
	"t1"."Id" = 1
FETCH NEXT 1 ROWS ONLY

