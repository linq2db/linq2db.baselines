BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 4

SELECT
	t3.F2
FROM
	(
		SELECT DISTINCT
			t2.F1,
			t2.F2
		FROM
			(
				SELECT
					t1.F1,
					t1.F2
				FROM
					"DistinctOrderByTable" t1
				ORDER BY
					t1.F3 DESC
				OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 
			) t2
	) t3

