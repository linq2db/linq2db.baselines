BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BlobClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BlobClass"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BlobClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "BlobClass"
			(
				"Id"        Int  NOT NULL,
				"BlobValue" Blob,

				CONSTRAINT "PK_BlobClass" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass" "t1"
WHERE
	"t1"."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

UPDATE
	"BlobClass" "t1"
SET
	"BlobValue" = X'030201'
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass" "t1"
WHERE
	"t1"."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BlobClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BlobClass"';
END

