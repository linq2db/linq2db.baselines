BeforeExecute
-- Firebird

CREATE TABLE "BlobClass10"
(
	"Id"        Int  NOT NULL,
	"BlobValue" Blob,

	CONSTRAINT "PK_BlobClass10" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

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
-- Firebird

DROP TABLE "BlobClass10"

