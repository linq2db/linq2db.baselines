-- Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Parent" p
					LEFT JOIN (
						SELECT
							c_1."ParentID",
							c_1."ChildID",
							ROW_NUMBER() OVER (PARTITION BY c_1."ParentID" ORDER BY c_1."ParentID") as "rn"
						FROM
							"Child" c_1
					) t1 ON t1."ParentID" = p."ParentID" AND t1."rn" <= 1
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

