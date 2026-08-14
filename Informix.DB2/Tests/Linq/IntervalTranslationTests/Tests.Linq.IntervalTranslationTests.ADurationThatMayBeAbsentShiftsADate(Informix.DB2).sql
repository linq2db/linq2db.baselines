-- Informix.DB2 Informix
SELECT
	r.Id,
	r.Grace,
	r.Required
FROM
	OptionalDurationRow r
ORDER BY
	r.Id

