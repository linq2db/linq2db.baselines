-- Informix.DB2 Informix
SELECT
	To_Char(-5.5),
	To_Char(-5),
	To_Char(-r.C),
	To_Char(r.A + r.B),
	To_Char(r.A * r.B)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

