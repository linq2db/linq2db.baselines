-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	CASE
		WHEN i."Id" > 0 THEN 1
		ELSE 0
	END as "c1",
	i."Id",
	i."GroupId"
FROM
	"BatchItem" i
WHERE
	i."Id" > 100
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
	t1."c1",
	t1."Id",
	t1."GroupId"
FROM
	(
		SELECT
			1 as "c1"
		FROM SYS.DUAL
	) t2
		LEFT JOIN (
			SELECT
				CASE
					WHEN i."Id" > 0 THEN 1
					ELSE 0
				END as "c1",
				i."Id",
				i."GroupId",
				1 as "Item1"
			FROM
				"BatchItem" i
			WHERE
				i."Id" > 100
			FETCH NEXT 1 ROWS ONLY
		) t1 ON 1=1

