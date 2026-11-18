-- Informix.DB2 Informix
SELECT
	r.Id,
	Mod(r.Grace / 60, 60)::Int,
	r.Grace::Float / 60,
	r.Required::Float / 60
FROM
	OptionalDurationRow r
ORDER BY
	r.Id

