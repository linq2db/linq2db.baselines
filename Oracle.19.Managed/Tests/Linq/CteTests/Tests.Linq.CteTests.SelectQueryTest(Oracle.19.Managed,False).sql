BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Date_1 TimeStamp -- DateTime
SET     @Date_1 = TIMESTAMP '2020-02-29 00:00:00.000000'
DECLARE @dateTo TimeStamp -- DateTime
SET     @dateTo = TIMESTAMP '2020-03-10 00:00:00.000000'

WITH "x" ("Counter", "Date_1")
AS
(
	SELECT
		CAST(1 AS Int),
		:Date_1
	FROM SYS.DUAL
	UNION ALL
	SELECT
		t1."Counter" + 1,
		t1."Date_1" + 1D * INTERVAL '1' DAY
	FROM
		"x" t1
	WHERE
		t1."Date_1" + 1D * INTERVAL '1' DAY < :dateTo
)
SELECT
	t2."Counter",
	t2."Date_1"
FROM
	"x" t2

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Date_1 TimeStamp -- DateTime
SET     @Date_1 = TIMESTAMP '2020-02-29 00:00:00.000000'
DECLARE @dateTo TimeStamp -- DateTime
SET     @dateTo = TIMESTAMP '2020-03-10 00:00:00.000000'

WITH "x" ("Counter", "Date_1")
AS
(
	SELECT
		CAST(1 AS Int),
		:Date_1
	FROM SYS.DUAL
	UNION ALL
	SELECT
		t1."Counter" + 1,
		t1."Date_1" + 1D * INTERVAL '1' DAY
	FROM
		"x" t1
	WHERE
		t1."Date_1" + 1D * INTERVAL '1' DAY < :dateTo
)
SELECT
	t2."Counter",
	t2."Date_1"
FROM
	"x" t2

