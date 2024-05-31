BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
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
			THEN True
		ELSE False
	END

