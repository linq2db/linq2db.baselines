BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 1

SELECT
	t2."c1",
	t2."LastName",
	t2."Count_1",
	t2.MAX_1
FROM
	(
		SELECT
			t1."c1",
			t1."LastName",
			t1."Count_1",
			t1.MAX_1,
			ROWNUM as RN
		FROM
			(
				SELECT
					summary."c1",
					summary."LastName",
					summary."Count_1",
					summary.MAX_1
				FROM
					(
						SELECT
							COUNT(*) as "Count_1",
							group_1."LastName",
							MAX(group_1."FirstName") as MAX_1,
							COUNT(*) OVER() as "c1"
						FROM
							"Person" group_1
						GROUP BY
							group_1."LastName"
					) summary
				WHERE
					summary."Count_1" > 5
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

