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
-- Firebird

UPDATE
	"BlobClass"
SET
	"BlobClass"."BlobValue" = X'030201'
WHERE
	"BlobClass"."Id" = 1

BeforeExecute
-- Firebird

DROP TABLE "BlobClass"

