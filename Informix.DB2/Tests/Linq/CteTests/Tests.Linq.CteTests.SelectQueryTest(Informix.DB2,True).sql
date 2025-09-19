BeforeExecute
-- Informix.DB2 Informix

WITH x (Counter, Date_1)
AS
(
	SELECT
		1::Int,
		TO_DATE('2020-02-29', '%Y-%m-%d')::datetime year to fraction
	FROM table(set{1})
	UNION ALL
	SELECT
		t1.Counter + 1,
		t1.Date_1 + Interval (1) Day to Day
	FROM
		x t1
	WHERE
		t1.Date_1 + Interval (1) Day to Day < TO_DATE('2020-03-10', '%Y-%m-%d')
)
SELECT
	t2.Counter,
	t2.Date_1
FROM
	x t2

BeforeExecute
-- Informix.DB2 Informix

WITH x (Counter, Date_1)
AS
(
	SELECT
		1::Int,
		TO_DATE('2020-02-29', '%Y-%m-%d')::datetime year to fraction
	FROM table(set{1})
	UNION ALL
	SELECT
		t1.Counter + 1,
		t1.Date_1 + Interval (1) Day to Day
	FROM
		x t1
	WHERE
		t1.Date_1 + Interval (1) Day to Day < TO_DATE('2020-03-10', '%Y-%m-%d')
)
SELECT
	t2.Counter,
	t2.Date_1
FROM
	x t2

