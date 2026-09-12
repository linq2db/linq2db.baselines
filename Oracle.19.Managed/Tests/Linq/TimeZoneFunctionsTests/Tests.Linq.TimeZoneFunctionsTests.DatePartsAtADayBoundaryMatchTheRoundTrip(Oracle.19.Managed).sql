-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	EXTRACT(DAY FROM CAST(r."Dto" AS timestamp)) as "Day_1",
	EXTRACT(MONTH FROM CAST(r."Dto" AS timestamp)) as "Month_1",
	EXTRACT(YEAR FROM CAST(r."Dto" AS timestamp)) as "Year_1",
	TO_NUMBER(TO_CHAR(CAST(r."Dto" AS timestamp), 'DDD')) as "DayOfYear"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

