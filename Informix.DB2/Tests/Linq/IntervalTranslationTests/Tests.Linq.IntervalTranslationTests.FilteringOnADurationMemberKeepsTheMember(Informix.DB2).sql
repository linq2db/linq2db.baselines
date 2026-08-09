-- Informix.DB2 Informix
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	(r.Grace::BigInt * 10000000)::Float / 600000000 > 30
ORDER BY
	r.Id

-- Informix.DB2 Informix
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	(r.Required::BigInt * 10000000)::Float / 600000000 > 30
ORDER BY
	r.Id

