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
	"a_ChildInner"."ParentID"
FROM
	"NotNullParent" p
		INNER JOIN "NotNullChild" "a_ChildInner" ON p."ID" = "a_ChildInner"."ParentID"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NotNullChild"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NotNullParent"

