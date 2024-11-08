BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"Parent" c_1
WHERE
	c_1."ParentID" >= 1000

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(1000,NULL),
(1001,NULL)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = 1000 AND p."Value1" IS NULL OR p."ParentID" = 1001 AND p."Value1" IS NULL

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"Parent" c_1
WHERE
	c_1."ParentID" >= 1000

