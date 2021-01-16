BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "ProductTable"
(
	"Id"   Int  NOT NULL,
	"Name" text NOT NULL,

	CONSTRAINT "PK_ProductTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "ProductAttributeTable"
(
	"Id"   Int  NOT NULL,
	"Name" text NOT NULL,

	CONSTRAINT "PK_ProductAttributeTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "ProductAttributeMapping"
(
	"ProductId"          Int NOT NULL,
	"ProductAttributeId" Int NOT NULL,

	CONSTRAINT "PK_ProductAttributeMapping" PRIMARY KEY ("ProductId", "ProductAttributeId")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "ProductAttributeMapping"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "ProductAttributeTable"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "ProductTable"

