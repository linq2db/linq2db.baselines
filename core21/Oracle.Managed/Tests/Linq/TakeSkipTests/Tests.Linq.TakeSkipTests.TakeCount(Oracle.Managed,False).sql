BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	(
		SELECT
			t1.ChildID
		FROM
			Child t1
		FETCH NEXT 5 ROWS ONLY
	) t2

