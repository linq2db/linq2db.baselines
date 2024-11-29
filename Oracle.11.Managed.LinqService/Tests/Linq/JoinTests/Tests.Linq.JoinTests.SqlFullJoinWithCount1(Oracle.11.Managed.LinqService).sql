BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN COUNT(t1."ParentID") = COUNT(right_1."ParentID") AND COUNT(t1."ParentID") = COUNT(*)
			THEN 1
		ELSE 0
	END
FROM
	"Parent" t1
		FULL JOIN "Parent" right_1 ON right_1."ParentID" = t1."ParentID"
WHERE
	ROWNUM <= 2

