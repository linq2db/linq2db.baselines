-- Informix.DB2 Informix

SELECT
	t.FinishedOn,
	t.StartedOn
FROM
	NullableDateTimeSub t
ORDER BY
	t.Id

