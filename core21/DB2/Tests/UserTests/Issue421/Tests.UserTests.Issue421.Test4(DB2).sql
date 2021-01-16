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

SELECT
	"_"."Id",
	"_"."BlobValue"
FROM
	"BlobClass" "_"
WHERE
	"_"."Id" = 1
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_"."Id",
	"_"."BlobValue"
FROM
	"BlobClass" "_"
WHERE
	"_"."Id" = 1
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "BlobClass"

