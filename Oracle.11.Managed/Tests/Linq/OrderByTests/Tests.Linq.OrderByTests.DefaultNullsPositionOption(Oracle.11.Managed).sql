-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	t1."Id"
FROM
	(
		SELECT
			x."Id"
		FROM
			"NullsTable" x
		ORDER BY
			x."Value" NULLS LAST,
			x."Id"
	) t1
WHERE
	ROWNUM <= :take
ORDER BY
	t1."Id"

-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	t1."Id"
FROM
	(
		SELECT
			x."Id"
		FROM
			"NullsTable" x
		ORDER BY
			x."Value" NULLS LAST,
			x."Id"
	) t1
WHERE
	ROWNUM <= :take
ORDER BY
	t1."Id"

