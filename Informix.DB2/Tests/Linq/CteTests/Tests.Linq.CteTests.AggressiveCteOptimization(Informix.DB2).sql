-- Informix.DB2 Informix
DECLARE @Date Timestamp(16) -- DateTime
SET     @Date = TO_DATE('2020-02-29', '%Y-%m-%d')
DECLARE @dateTo Timestamp(16) -- DateTime
SET     @dateTo = TO_DATE('2020-03-10', '%Y-%m-%d')

WITH x (Date_1, Date_Year, Date_Month)
AS
(
	SELECT
		@Date::datetime year to fraction,
		Year(@Date::datetime year to fraction),
		Month(@Date::datetime year to fraction)
	FROM table(set{1})
	UNION ALL
	SELECT
		t1.Date_1 + Interval (1) Day to Day,
		Year(t1.Date_1 + Interval (1) Day to Day),
		Month(t1.Date_1 + Interval (1) Day to Day)
	FROM
		x t1
	WHERE
		t1.Date_1 + Interval (1) Day to Day < @dateTo
)
SELECT
	r.Date_1,
	Mdy(1, 1, r.Date_Year),
	Mdy(r.Date_Month, 1, r.Date_Year)
FROM
	x r

