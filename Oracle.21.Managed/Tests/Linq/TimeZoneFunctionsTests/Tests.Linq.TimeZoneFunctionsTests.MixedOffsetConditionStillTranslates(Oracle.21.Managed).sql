-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Flag",
	t1."Dto",
	t1."Dto2",
	t1."Stamp",
	t1."StampN"
FROM
	"MixedStampRow" t1
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	CAST((CASE
		WHEN r."Stamp" < r."Dto" THEN r."Dto"
		ELSE r."Dto2"
	END AT TIME ZONE 'UTC') AS timestamp(7)) as "c1"
FROM
	"MixedStampRow" r
FETCH NEXT 2 ROWS ONLY

