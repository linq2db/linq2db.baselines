BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	EXISTS(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		UNION ALL
		SELECT
			p_1."ParentID"
		FROM
			"Parent" p_1
	)

