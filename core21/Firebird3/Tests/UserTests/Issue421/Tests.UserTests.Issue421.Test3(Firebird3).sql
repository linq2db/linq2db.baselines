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
	@Id,
	@BlobValue
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	"t1"."Id", 
	"t1"."BlobValue"
FROM
	"BlobClass" "t1"
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	"t1"."Id", 
	"t1"."BlobValue"
FROM
	"BlobClass" "t1"
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "BlobClass"

