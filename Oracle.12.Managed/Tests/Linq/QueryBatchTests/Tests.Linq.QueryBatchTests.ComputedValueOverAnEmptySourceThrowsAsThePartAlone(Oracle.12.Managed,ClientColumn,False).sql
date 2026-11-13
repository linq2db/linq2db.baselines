-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	i."Id"
FROM
	"BatchItem" i
WHERE
	i."Id" > 100
FETCH NEXT 1 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value",
	t1."GroupId",
	t1."Name"
FROM
	"BatchItem" t1

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."not_null",
	t1."Item1"
FROM
	(
		SELECT
			1 as "c1"
		FROM SYS.DUAL
	) t2
		LEFT JOIN (
			SELECT
				1 as "not_null",
				i."Id" as "Item1"
			FROM
				"BatchItem" i
			WHERE
				i."Id" > 100
			FETCH NEXT 1 ROWS ONLY
		) t1 ON 1=1

