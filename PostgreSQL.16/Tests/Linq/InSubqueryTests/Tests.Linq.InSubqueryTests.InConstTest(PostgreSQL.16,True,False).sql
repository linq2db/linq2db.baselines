BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."Value1"
FROM
	"Parent" c_1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p
		WHERE
			1 = p."Value1"
	)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

