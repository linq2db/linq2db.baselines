BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "CustomerBase"
(
	"Id"           SERIAL   NOT NULL,
	"ClientType"   text     NOT NULL,
	"Name"         text         NULL,
	"ContactEmail" text         NULL,
	"Enabled"      Boolean      NULL,

	CONSTRAINT "PK_CustomerBase" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE "CustomerBase"

