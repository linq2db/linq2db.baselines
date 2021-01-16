BeforeExecute
-- Firebird

CREATE TABLE "BlobClass"
(
	"Id"        Int  NOT NULL,
	"BlobValue" Blob,

	CONSTRAINT "PK_BlobClass" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird
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
-- Firebird

DROP TABLE "BlobClass"

