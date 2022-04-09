BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "BlobClass10"
(
	"Id"        Int  NOT NULL,
	"BlobValue" Blob,

	CONSTRAINT "PK_BlobClass10" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "BlobClass10"
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
-- Firebird4 Firebird

SELECT FIRST 1
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass10" "t1"
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 1
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass10" "t1"
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BlobClass10')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BlobClass10"';
END

