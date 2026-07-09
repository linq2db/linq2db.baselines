-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

DELETE FROM
	"Parent" c_1
WHERE
	c_1."ParentID" >= 1000

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(1000,NULL),
(1001,NULL)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = 1000 AND p."Value1" IS NULL OR p."ParentID" = 1001 AND p."Value1" IS NULL

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

DELETE FROM
	"Parent" c_1
WHERE
	c_1."ParentID" >= 1000

