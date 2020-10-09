BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "BlobClass"
(
	"Id"        Int  NOT NULL,
	"BlobValue" Blob,

	CONSTRAINT "PK_BlobClass" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

SELECT FIRST 1 
	"t1"."Id", 
	"t1"."BlobValue"
FROM
	"BlobClass" "t1"
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird3 Firebird

UPDATE
	"BlobClass"
SET
	"BlobClass"."BlobValue" = X'030201'
WHERE
	"BlobClass"."Id" = 1

BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 1 
	"t1"."Id", 
	"t1"."BlobValue"
FROM
	"BlobClass" "t1"
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "BlobClass"

