BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

INSERT INTO "BlobClass"
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
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 1
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass" "t1"
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

UPDATE
	"BlobClass" "t1"
SET
	"BlobValue" = X'030201'
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 1
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass" "t1"
WHERE
	"t1"."Id" = 1

