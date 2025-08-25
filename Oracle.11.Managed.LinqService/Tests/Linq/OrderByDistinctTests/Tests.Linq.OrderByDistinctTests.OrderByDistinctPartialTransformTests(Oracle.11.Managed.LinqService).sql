BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."DuplicateData",
	t2."OrderData2"
FROM
	(
		SELECT
			t1."DuplicateData",
			t1."OrderData2",
			ROWNUM as RN
		FROM
			(
				SELECT DISTINCT
					x."DuplicateData",
					x."OrderData2"
				FROM
					"OrderByDistinctData" x
				ORDER BY
					x."OrderData2" DESC
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip
ORDER BY
	t2."OrderData2" DESC

