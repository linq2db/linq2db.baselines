BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BlobClass16')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BlobClass16"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BlobClass16')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "BlobClass16"
			(
				"Id"        Int  NOT NULL,
				"BlobValue" Blob,

				CONSTRAINT "PK_BlobClass16" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass16" "t1"
WHERE
	"t1"."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass16" "t1"
WHERE
	"t1"."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BlobClass16')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BlobClass16"';
END

