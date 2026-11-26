-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"StampRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."Dto" + 1D * INTERVAL '1' DAY as "c1"
FROM
	"StampRow" r
FETCH NEXT 2 ROWS ONLY

