BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			SUM(CASE
				WHEN d."ParentID" IS NOT NULL
					THEN d."ParentID"
				ELSE -100
			END)
		FROM
			(
				SELECT
					-100 as "ParentID"
				FROM SYS.DUAL
			) t1
				LEFT JOIN "Child" d ON p."ParentID" = d."ParentID"
	)
FROM
	"Parent" p

