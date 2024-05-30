BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 10

SELECT
	t1.ID,
	t1."Id2"
FROM
	(
		SELECT
			a."PersonID" as "Id2",
			a."PersonID" as ID
		FROM
			"Person" a
		WHERE
			ROWNUM <= :take
	) t1
ORDER BY
	t1."Id2"

