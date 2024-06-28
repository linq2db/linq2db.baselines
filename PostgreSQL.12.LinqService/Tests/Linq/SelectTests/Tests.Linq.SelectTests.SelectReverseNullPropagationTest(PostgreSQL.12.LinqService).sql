BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN q."ParentID" IS NOT NULL THEN q."ParentID"
		ELSE 0
	END
FROM
	"Parent" q

