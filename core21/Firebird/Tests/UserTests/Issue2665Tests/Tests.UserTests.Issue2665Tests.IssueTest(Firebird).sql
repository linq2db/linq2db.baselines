BeforeExecute
-- Firebird

CREATE TABLE "ProductTable"
(
	"Id"   Int                                    NOT NULL,
	"Name" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

	CONSTRAINT "PK_ProductTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

CREATE TABLE "ProductAttributeTable"
(
	"Id"   Int                                    NOT NULL,
	"Name" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

	CONSTRAINT "PK_ProductAttributeTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

CREATE TABLE "ProductAttributeMapping"
(
	"ProductId"          Int NOT NULL,
	"ProductAttributeId" Int NOT NULL,

	CONSTRAINT "PK_ProductAttributeMapping" PRIMARY KEY ("ProductId", "ProductAttributeId")
)

BeforeExecute
-- Firebird

DROP TABLE "ProductAttributeMapping"

BeforeExecute
-- Firebird

DROP TABLE "ProductAttributeTable"

BeforeExecute
-- Firebird

DROP TABLE "ProductTable"

