-- Oracle.11.Managed Oracle11
SELECT
	r."Dto"
FROM
	"StampRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	r."Dto" + 1D * INTERVAL '1' DAY
FROM
	"StampRow" r
WHERE
	ROWNUM <= 2

