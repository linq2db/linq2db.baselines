BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DynamicParent"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "DynamicParent"
(
	"ID" SERIAL  NOT NULL,

	CONSTRAINT "PK_DynamicParent" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DynamicChild"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "DynamicChild"
(
	"ID"       SERIAL  NOT NULL,
	"ParentID" Int     NOT NULL,

	CONSTRAINT "PK_DynamicChild" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	it."ID"
FROM
	"DynamicParent" it
		LEFT JOIN "DynamicChild" "a_Child" ON it."ID" = "a_Child"."ParentID"
WHERE
	"a_Child"."ID" = 123 AND "a_Child"."ID" IS NOT NULL

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DynamicChild"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DynamicParent"

