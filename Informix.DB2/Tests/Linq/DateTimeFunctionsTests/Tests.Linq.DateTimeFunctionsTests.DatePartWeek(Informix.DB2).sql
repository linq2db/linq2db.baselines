-- Informix.DB2 Informix

SELECT
	(Extend(t.DateTimeValue, Year to Day) - Mdy(12, 31 - WeekDay(Mdy(1, 1, Year(t.DateTimeValue))), Year(t.DateTimeValue) - 1)) / 7 + Interval (1) Day to Day
FROM
	LinqDataTypes t

