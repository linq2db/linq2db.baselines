BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "InheritanceFilter"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "InheritanceFilter"
(
	"Id"                Int NOT NULL,
	"Code"              Int NOT NULL,
	"Child1Field"       Int     NULL,
	"Child2Field"       Int     NULL,
	"Grandchild11Field" Int     NULL,
	"Grandchild12Field" Int     NULL,
	"Grandchild21Field" Int     NULL,
	"Grandchild22Field" Int     NULL,

	CONSTRAINT "PK_InheritanceFilter" PRIMARY KEY ("Id")
)

BeforeExecute
INSERT BULK "InheritanceFilter"(Id, Code, Child1Field, Child2Field, Grandchild11Field, Grandchild12Field, Grandchild21Field, Grandchild22Field)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Code",
	t1."Id",
	t1."Child1Field",
	t1."Child2Field",
	t1."Grandchild11Field",
	t1."Grandchild12Field",
	t1."Grandchild21Field",
	t1."Grandchild22Field"
FROM
	"InheritanceFilter" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "InheritanceFilter"

