-- Informix.DB2 Informix
SELECT
	r.Id,
	Mod((r.Grace::BigInt * 10000000) / 600000000, 60)::Int,
	(r.Grace::BigInt * 10000000)::Float / 600000000,
	(r.Required::BigInt * 10000000)::Float / 600000000
FROM
	OptionalDurationRow r
ORDER BY
	r.Id

