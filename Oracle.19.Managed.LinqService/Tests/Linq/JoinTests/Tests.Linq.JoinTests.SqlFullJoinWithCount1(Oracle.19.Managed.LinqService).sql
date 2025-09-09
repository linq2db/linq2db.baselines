BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	CASE
		WHEN COUNT(t1."ParentID") = COUNT(right_1."ParentID") AND COUNT(t1."ParentID") = COUNT(*)
			THEN 1
		ELSE 0
	END as "cond"
FROM
	"Parent" t1
		FULL JOIN "Parent" right_1 ON right_1."ParentID" = t1."ParentID"
FETCH NEXT 2 ROWS ONLY

