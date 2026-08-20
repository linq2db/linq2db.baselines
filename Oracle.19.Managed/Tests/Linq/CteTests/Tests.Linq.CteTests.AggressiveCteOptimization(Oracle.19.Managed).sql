-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Date_1 TimeStamp -- DateTime
SET     @Date_1 = TIMESTAMP '2020-02-29 00:00:00.000000'
DECLARE @dateTo TimeStamp -- DateTime
SET     @dateTo = TIMESTAMP '2020-03-10 00:00:00.000000'

WITH "x" ("Date_1", "Date_Year", "Date_Month")
AS
(
	SELECT
		:Date_1,
		EXTRACT(YEAR FROM :Date_1),
		EXTRACT(MONTH FROM :Date_1)
	FROM SYS.DUAL
	UNION ALL
	SELECT
		t1."Date_1" + 1D * INTERVAL '1' DAY,
		EXTRACT(YEAR FROM (t1."Date_1" + 1D * INTERVAL '1' DAY)),
		EXTRACT(MONTH FROM (t1."Date_1" + 1D * INTERVAL '1' DAY))
	FROM
		"x" t1
	WHERE
		t1."Date_1" + 1D * INTERVAL '1' DAY < :dateTo
)
SELECT
	r."Date_1",
	TO_TIMESTAMP(LPad(CAST(r."Date_Year" AS VarChar(4)), 4, '0') || '-01-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3'),
	TO_TIMESTAMP(LPad(CAST(r."Date_Year" AS VarChar(4)), 4, '0') || '-' || LPad(CAST(r."Date_Month" AS VarChar(2)), 2, '0') || '-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3')
FROM
	"x" r

