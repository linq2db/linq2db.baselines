-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Flag",
	t1."Dto",
	t1."Dto2",
	t1."Stamp",
	t1."StampN"
FROM
	"MixedStampRow" t1
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	CAST((CASE
		WHEN r."Stamp" < r."Dto" THEN r."Dto"
		ELSE r."Dto2"
	END AT TIME ZONE 'UTC') AS timestamp(7))
FROM
	"MixedStampRow" r
WHERE
	ROWNUM <= 2

