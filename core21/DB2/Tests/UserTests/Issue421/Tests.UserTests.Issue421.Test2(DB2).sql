BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "BlobClass"
(
	"Id"        Int  NOT NULL,
	"BlobValue" Blob     NULL,

	CONSTRAINT "PK_BlobClass" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "BlobClass"
(
	"Id",
	"BlobValue"
)
VALUES
(
	1,
	BX'010203'
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

UPDATE
	"BlobClass"
SET
	"BlobClass"."BlobValue" = BX'030201'
WHERE
	"BlobClass"."Id" = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "BlobClass"

