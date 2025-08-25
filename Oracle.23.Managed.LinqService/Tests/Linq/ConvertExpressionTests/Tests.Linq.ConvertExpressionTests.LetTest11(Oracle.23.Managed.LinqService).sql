BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	CASE
		WHEN t1."cond" IS NULL THEN 0
		ELSE t1."cond"
	END,
	t2."ParentID",
	t2."ChildID"
FROM
	"Parent" p
		LEFT JOIN (
			SELECT
				c_1."ParentID" as "cond"
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" > 0
			ORDER BY
				c_1."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) t1 ON 1=1
		LEFT JOIN (
			SELECT
				c_2."ParentID",
				c_2."ChildID"
			FROM
				"Child" c_2
			WHERE
				c_2."ChildID" > -100
			ORDER BY
				c_2."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) t2 ON 1=1
ORDER BY
	p."ParentID"

