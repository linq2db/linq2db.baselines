-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."Id",
	t2."Value_1",
	t2."GroupId",
	t2."Name"
FROM
	(
		SELECT
			t1."Id",
			t1."Value" as "Value_1",
			t1."GroupId",
			t1."Name"
		FROM
			"BatchItem" t1
		ORDER BY
			t1."Id"
	) t2
WHERE
	ROWNUM <= :take
ORDER BY
	t2."Id"

-- Oracle.11.Managed Oracle11
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"BatchItem" t1
	)
FROM SYS.DUAL

