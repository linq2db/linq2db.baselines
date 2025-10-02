BeforeExecute
-- Informix.DB2 Informix
DECLARE @Date Timestamp(16) -- DateTime
SET     @Date = TO_DATE('2020-02-29', '%Y-%m-%d')
DECLARE @dateTo Timestamp(16) -- DateTime
SET     @dateTo = TO_DATE('2020-03-10', '%Y-%m-%d')

WITH x (Counter, Date_1)
AS
(
	SELECT
		1::Int,
		@Date::datetime year to fraction
	FROM table(set{1})
	UNION ALL
	SELECT
		t1.Counter + 1,
		t1.Date_1 + Interval (1) Day to Day
	FROM
		x t1
	WHERE
		t1.Date_1 + Interval (1) Day to Day < @dateTo
)
SELECT
	t2.Counter,
	t2.Date_1
FROM
	x t2

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Date Timestamp(16) -- DateTime
SET     @Date = TO_DATE('2020-02-29', '%Y-%m-%d')
DECLARE @dateTo Timestamp(16) -- DateTime
SET     @dateTo = TO_DATE('2020-03-10', '%Y-%m-%d')

WITH x (Counter, Date_1)
AS
(
	SELECT
		1::Int,
		@Date::datetime year to fraction
	FROM table(set{1})
	UNION ALL
	SELECT
		t1.Counter + 1,
		t1.Date_1 + Interval (1) Day to Day
	FROM
		x t1
	WHERE
		t1.Date_1 + Interval (1) Day to Day < @dateTo
)
SELECT
	t2.Counter,
	t2.Date_1
FROM
	x t2

