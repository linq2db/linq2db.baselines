BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "BlobClass10"
(
	"Id"        Int  NOT NULL,
	"BlobValue" Blob,

	CONSTRAINT "PK_BlobClass10" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

SELECT FIRST 1
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass10" "t1"
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 1
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass10" "t1"
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "BlobClass10"

