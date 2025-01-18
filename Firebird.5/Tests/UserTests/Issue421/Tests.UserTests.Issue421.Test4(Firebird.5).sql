BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "BlobClass16"
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
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass16" "t1"
WHERE
	"t1"."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass16" "t1"
WHERE
	"t1"."Id" = 1
FETCH NEXT 1 ROWS ONLY

