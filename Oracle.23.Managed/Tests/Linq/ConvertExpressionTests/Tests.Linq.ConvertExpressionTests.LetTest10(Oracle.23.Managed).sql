-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Parent" p
					OUTER APPLY (
						SELECT
							c_1."ParentID",
							c_1."ChildID"
						FROM
							"Child" c_1
						WHERE
							c_1."ParentID" = p."ParentID"
						FETCH NEXT 1 ROWS ONLY
					) t1
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

