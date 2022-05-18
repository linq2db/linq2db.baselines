﻿BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "BlobClass"
(
	"Id"        Int  NOT NULL,
	"BlobValue" Blob,

	CONSTRAINT "PK_BlobClass" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @BlobValue Binary(3)
SET     @BlobValue = X'010203'

INSERT INTO "BlobClass"
(
	"Id",
	"BlobValue"
)
VALUES
(
	Cast(@Id as Int),
	Cast(@BlobValue as Blob)
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
DECLARE @BlobValue Binary(3)
SET     @BlobValue = X'030201'

UPDATE
	"BlobClass"
SET
	"BlobClass"."BlobValue" = @BlobValue
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

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BlobClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BlobClass"';
END

