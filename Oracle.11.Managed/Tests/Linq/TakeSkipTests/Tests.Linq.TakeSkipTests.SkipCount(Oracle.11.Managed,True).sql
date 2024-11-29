BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT
			t3."c1"
		FROM
			(
				SELECT
					t2."c1",
					ROWNUM as RN
				FROM
					(
						SELECT
							1 as "c1"
						FROM
							"Child" t1
					) t2
			) t3
		WHERE
			t3.RN > :skip
	) t4

