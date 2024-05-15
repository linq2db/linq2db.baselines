BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BlobClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BlobClass"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass" "t1"
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird.2.5 Firebird

UPDATE
	"BlobClass" "t1"
SET
	"BlobValue" = X'030201'
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass" "t1"
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BlobClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BlobClass"';
END

