-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 2
DECLARE @take Int32
SET     @take = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			(
				SELECT
					ROWNUM as RN
				FROM
					(
						SELECT
							*
						FROM
							"Child" t1
					) t2
				WHERE
					ROWNUM <= (:skip + :take)
			) t3
		WHERE
			t3.RN > :skip
	) t4

