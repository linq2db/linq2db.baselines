-- Informix.DB2 Informix

SELECT
	((Extend(t.DateTimeValue, year to day) - (Mdy(12, 31 - WeekDay(Mdy(1, 1, year(t.DateTimeValue))), Year(t.DateTimeValue) - 1) + Interval(1) day to day)) / 7 + Interval(1) day to day)::char(10)::int
FROM
	LinqDataTypes t

