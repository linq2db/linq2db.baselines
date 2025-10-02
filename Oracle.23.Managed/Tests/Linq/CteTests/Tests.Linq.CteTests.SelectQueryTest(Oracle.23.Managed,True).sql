BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

WITH "x" ("Counter", "Date_1")
AS
(
	SELECT
		CAST(1 AS Int),
		TIMESTAMP '2020-02-29 00:00:00.000000'
	FROM SYS.DUAL
	UNION ALL
	SELECT
		t1."Counter" + 1,
		t1."Date_1" + 1D * INTERVAL '1' DAY
	FROM
		"x" t1
	WHERE
		t1."Date_1" + 1D * INTERVAL '1' DAY < TIMESTAMP '2020-03-10 00:00:00.000000'
)
SELECT
	t2."Counter",
	t2."Date_1"
FROM
	"x" t2

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

WITH "x" ("Counter", "Date_1")
AS
(
	SELECT
		CAST(1 AS Int),
		TIMESTAMP '2020-02-29 00:00:00.000000'
	FROM SYS.DUAL
	UNION ALL
	SELECT
		t1."Counter" + 1,
		t1."Date_1" + 1D * INTERVAL '1' DAY
	FROM
		"x" t1
	WHERE
		t1."Date_1" + 1D * INTERVAL '1' DAY < TIMESTAMP '2020-03-10 00:00:00.000000'
)
SELECT
	t2."Counter",
	t2."Date_1"
FROM
	"x" t2

