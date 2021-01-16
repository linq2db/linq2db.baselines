BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Issue1564Category"
(
	"Id"           Int     NOT NULL,
	"IsVisible"    Boolean NOT NULL,
	"DisplayOrder" Int     NOT NULL,
	"ParentId"     Int     NOT NULL,
	"Name"         text        NULL,

	CONSTRAINT "PK_Issue1564Category" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE "Issue1564Category"

