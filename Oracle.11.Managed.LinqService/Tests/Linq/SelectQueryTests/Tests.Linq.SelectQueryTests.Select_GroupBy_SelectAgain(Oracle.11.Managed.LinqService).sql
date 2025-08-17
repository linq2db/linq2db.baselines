BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 1

SELECT
	COUNT(*) OVER(),
	x."Key_1",
	x."Count_1",
	x.MAX_1
FROM
	(
		SELECT
			t2."Key_1",
			t2."Count_1",
			t2.MAX_1
		FROM
			(
				SELECT
					t1."Key_1",
					t1."Count_1",
					t1.MAX_1,
					ROWNUM as RN
				FROM
					(
						SELECT
							summary."LastName" as "Key_1",
							COUNT(*) as "Count_1",
							MAX(summary."FirstName") as MAX_1
						FROM
							"Person" summary
						GROUP BY
							summary."LastName"
						HAVING
							COUNT(*) > 5
					) t1
				WHERE
					ROWNUM <= (:skip + :take)
			) t2
		WHERE
			t2.RN > :skip
	) x

