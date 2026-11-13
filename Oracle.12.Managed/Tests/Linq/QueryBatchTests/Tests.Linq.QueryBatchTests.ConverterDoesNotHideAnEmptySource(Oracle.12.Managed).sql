-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = 100

SELECT
	x."Value" as "Value_1"
FROM
	"ConvertedItem" x
WHERE
	x."Value" > :Value
FETCH NEXT 1 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value"
FROM
	"ConvertedItem" t1

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = 100

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
				x."Value" as "Item1_1"
			FROM
				"ConvertedItem" x
			WHERE
				x."Value" > :Value
			FETCH NEXT 1 ROWS ONLY
		) t1 ON 1=1

