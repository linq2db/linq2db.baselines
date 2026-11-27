-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Value_1",
	t1."GroupId",
	t1."Name"
FROM
	(
		SELECT
			i."Id",
			i."Value" as "Value_1",
			i."GroupId",
			i."Name"
		FROM
			"BatchItem" i
		WHERE
			i."Id" > 100
		ORDER BY
			i."Id"
	) t1
WHERE
	ROWNUM <= 1
ORDER BY
	t1."Id"

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Value",
	t1."GroupId",
	t1."Name"
FROM
	"BatchItem" t1

-- Oracle.11.Managed Oracle11
SELECT
	(
		SELECT
			t1."Item1"
		FROM
			(
				SELECT
					i."Id" as "Item1"
				FROM
					"BatchItem" i
				WHERE
					i."Id" > 100
				ORDER BY
					i."Id"
			) t1
		WHERE
			ROWNUM <= 1
	)
FROM SYS.DUAL

