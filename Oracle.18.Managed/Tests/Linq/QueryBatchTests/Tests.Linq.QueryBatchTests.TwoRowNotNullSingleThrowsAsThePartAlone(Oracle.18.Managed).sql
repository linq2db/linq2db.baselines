-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	i."Id"
FROM
	"BatchItem" i
FETCH NEXT 2 ROWS ONLY

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
				i."Id" as "Item1_1"
			FROM
				"BatchItem" i
		) t1 ON 1=1

