BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	p_1."ParentID",
	p_1."Value1"
FROM
	(
		SELECT
			p."ParentID",
			p."Value1"
		FROM
			"Parent" p
				CROSS JOIN "Child" c_1
		WHERE
			c_1."ParentID" = p."ParentID"
		FOR UPDATE
	) p_1
WHERE
	p_1."ParentID" < -100
FOR KEY SHARE SKIP LOCKED
FOR SHARE

