-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	i."Value" as "Value_1"
FROM
	"BatchItem" i
WHERE
	i."Id" = 3
FETCH NEXT 1 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value",
	t1."GroupId",
	t1."Name"
FROM
	"BatchItem" t1

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Item1",
	t1."Item1_1"
FROM
	(
		SELECT
			1 as "c1"
		FROM SYS.DUAL
	) t2
		LEFT JOIN (
			SELECT
				1 as "Item1",
				i."Value" as "Item1_1"
			FROM
				"BatchItem" i
			WHERE
				i."Id" = 3
			FETCH NEXT 1 ROWS ONLY
		) t1 ON 1=1

