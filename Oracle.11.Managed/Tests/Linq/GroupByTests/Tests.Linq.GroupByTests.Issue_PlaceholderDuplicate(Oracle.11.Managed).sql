BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 100

SELECT
	t2."key_1",
	t2."sort_1"
FROM
	(
		SELECT
			t1."PersonID" as "key_1",
			t1."PersonID" as "sort_1"
		FROM
			"Person" t1
		GROUP BY
			t1."PersonID",
			t1."PersonID"
		ORDER BY
			t1."PersonID"
	) t2
WHERE
	ROWNUM <= :take
ORDER BY
	t2."key_1"

