BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	MAX(CASE
		WHEN ch."ParentID" < 3 THEN ch."ChildID"
		ELSE NULL
	END)
FROM
	"Child" ch
WHERE
	ch."ParentID" < 3
GROUP BY
	ch."ParentID"

