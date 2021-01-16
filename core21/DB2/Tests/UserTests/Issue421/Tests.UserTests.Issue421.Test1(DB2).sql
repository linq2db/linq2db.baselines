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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @BlobValue Blob(3) -- Binary
SET     @BlobValue = BX'010203'

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
-- DB2 DB2.LUW DB2LUW
DECLARE @BlobValue Blob(3) -- Binary
SET     @BlobValue = BX'030201'

UPDATE
	"BlobClass"
SET
	"BlobClass"."BlobValue" = @BlobValue
WHERE
	"BlobClass"."Id" = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "BlobClass"

