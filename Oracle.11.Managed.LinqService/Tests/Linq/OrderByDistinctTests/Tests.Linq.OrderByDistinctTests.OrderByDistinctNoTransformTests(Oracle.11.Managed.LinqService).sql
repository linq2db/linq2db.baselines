BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."DuplicateData",
	t2."OrderData1"
FROM
	(
		SELECT
			t1."DuplicateData",
			t1."OrderData1",
			ROWNUM as RN
		FROM
			(
				SELECT DISTINCT
					x."DuplicateData",
					x."OrderData1"
				FROM
					"OrderByDistinctData" x
				ORDER BY
					x."OrderData1"
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip
ORDER BY
	t2."OrderData1"

