BeforeExecute
-- Firebird

CREATE TABLE "BlobClass20"
(
	"Id"        Int  NOT NULL,
	"BlobValue" Blob,

	CONSTRAINT "PK_BlobClass20" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

INSERT INTO "BlobClass20"
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
-- Firebird

SELECT FIRST 1 
	"t1"."Id", 
	"t1"."BlobValue"
FROM
	"BlobClass20" "t1"
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird

SELECT FIRST 1 
	"t1"."Id", 
	"t1"."BlobValue"
FROM
	"BlobClass20" "t1"
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird

DROP TABLE "BlobClass20"

