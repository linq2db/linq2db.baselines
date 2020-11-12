BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	(
		SELECT SKIP 2 FIRST 5
			t1.ChildID
		FROM
			Child t1
	) t2

