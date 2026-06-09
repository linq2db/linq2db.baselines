-- Informix.DB2 Informix

SELECT
	t.FinishedOn,
	t.StartedOn
FROM
	NullableDateTimeSubtractionTable t
ORDER BY
	t.Id

