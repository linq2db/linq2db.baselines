-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	t2.F2
FROM
	(
		SELECT DISTINCT
			t1.F1,
			t1.F2
		FROM
			"DistinctOrderByTable" t1
	) t2
ORDER BY
	t2.F1 DESC
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

