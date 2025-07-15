BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."DuplicateData"
FROM
	(
		SELECT
			t1."DuplicateData",
			ROWNUM as RN
		FROM
			(
				SELECT DISTINCT
					x."DuplicateData"
				FROM
					"OrderByDistinctData" x
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

