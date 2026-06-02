-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."Id",
	t2."Grp",
	t2."Value_1"
FROM
	(
		SELECT
			t1."Id",
			t1."Grp",
			t1."Value" as "Value_1"
		FROM
			"NullsTable" t1
		ORDER BY
			t1."Grp",
			t1."Value" DESC NULLS FIRST,
			t1."Id"
	) t2
WHERE
	ROWNUM <= :take
ORDER BY
	t2."Grp",
	t2."Value_1" DESC NULLS FIRST,
	t2."Id"

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Grp",
	t1."Value"
FROM
	"NullsTable" t1

