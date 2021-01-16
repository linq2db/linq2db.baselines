BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "ProductTable"
(
	"Id"   Int           NOT NULL,
	"Name" NVarChar(255) NOT NULL,

	CONSTRAINT "PK_ProductTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "ProductAttributeTable"
(
	"Id"   Int           NOT NULL,
	"Name" NVarChar(255) NOT NULL,

	CONSTRAINT "PK_ProductAttributeTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "ProductAttributeMapping"
(
	"ProductId"          Int NOT NULL,
	"ProductAttributeId" Int NOT NULL,

	CONSTRAINT "PK_ProductAttributeMapping" PRIMARY KEY ("ProductId", "ProductAttributeId")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "ProductAttributeMapping"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "ProductAttributeTable"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "ProductTable"

