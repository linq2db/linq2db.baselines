-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	CAST(r.A + r.B AS VarChar(255)),
	CAST(r.A - r.B AS VarChar(255)),
	CAST(r.A * r.B AS VarChar(255)),
	CAST(Trunc(r.A / r.B) AS VarChar(255)),
	CAST(MOD(r.A, r.B) AS VarChar(255)),
	CAST(BITAND(r.A, r.B) AS VarChar(255)),
	CAST(r.A + r.B - BITAND(r.A, r.B) AS VarChar(255)),
	CAST(r.A + r.B - BITAND(r.A, r.B) * 2 AS VarChar(255)),
	CAST(-r.A AS VarChar(255)),
	CAST(-1 - r.A AS VarChar(255))
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

