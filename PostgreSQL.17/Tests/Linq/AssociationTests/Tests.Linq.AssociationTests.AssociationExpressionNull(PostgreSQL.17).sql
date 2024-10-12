BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NotNullParent"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "NotNullParent"
(
	"ID" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "NotNullParent"
(
	"ID"
)
VALUES
(1),
(2)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NotNullChild"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "NotNullChild"
(
	"ParentID" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "NotNullChild"
(
	"ParentID"
)
VALUES
(1)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	"a_ChildOuter"."ParentID"
FROM
	"NotNullParent" p
		LEFT JOIN "NotNullChild" "a_ChildOuter" ON p."ID" = "a_ChildOuter"."ParentID"
ORDER BY
	p."ID"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NotNullChild"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NotNullParent"

