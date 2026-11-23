-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r.S || CAST(r.A + r.B AS VarChar(255)),
	CAST(r.A + r.B AS VarChar(255)) || r.S,
	r.S || ',' || (r.B + r.C) || ',' || r.C,
	r.S || r.S || CAST(r.A + r.B AS VarChar(255)),
	r.S || ',' || -(r.B + r.C) || ',' || r.C,
	r.S || ',' || (-1 - (r.B + r.C)) || ',' || r.C,
	r.S || CAST(r.A - r.B AS VarChar(255)),
	CAST(r.A - r.B AS VarChar(255)) || r.S,
	r.S || ',' || (r.B - r.C) || ',' || r.C,
	r.S || r.S || CAST(r.A - r.B AS VarChar(255)),
	r.S || ',' || -(r.B - r.C) || ',' || r.C,
	r.S || ',' || (-1 - (r.B - r.C)) || ',' || r.C,
	r.S || CAST(r.A * r.B AS VarChar(255)),
	CAST(r.A * r.B AS VarChar(255)) || r.S,
	r.S || ',' || r.B * r.C || ',' || r.C,
	r.S || r.S || CAST(r.A * r.B AS VarChar(255)),
	r.S || ',' || -(r.B * r.C) || ',' || r.C,
	r.S || ',' || (-1 - r.B * r.C) || ',' || r.C,
	r.S || CAST(Trunc(r.A / r.B) AS VarChar(255)),
	CAST(Trunc(r.A / r.B) AS VarChar(255)) || r.S,
	r.S || ',' || Trunc(r.B / r.C) || ',' || r.C,
	r.S || r.S || CAST(Trunc(r.A / r.B) AS VarChar(255)),
	r.S || ',' || -Trunc(r.B / r.C) || ',' || r.C,
	r.S || ',' || (-1 - Trunc(r.B / r.C)) || ',' || r.C,
	r.S || CAST(MOD(r.A, r.B) AS VarChar(255)),
	CAST(MOD(r.A, r.B) AS VarChar(255)) || r.S,
	r.S || ',' || MOD(r.B, r.C) || ',' || r.C,
	r.S || r.S || CAST(MOD(r.A, r.B) AS VarChar(255)),
	r.S || ',' || -MOD(r.B, r.C) || ',' || r.C,
	r.S || ',' || (-1 - MOD(r.B, r.C)) || ',' || r.C,
	r.S || CAST(BITAND(r.A, r.B) AS VarChar(255)),
	CAST(BITAND(r.A, r.B) AS VarChar(255)) || r.S,
	r.S || ',' || BITAND(r.B, r.C) || ',' || r.C,
	r.S || r.S || CAST(BITAND(r.A, r.B) AS VarChar(255)),
	r.S || ',' || -BITAND(r.B, r.C) || ',' || r.C,
	r.S || ',' || (-1 - BITAND(r.B, r.C)) || ',' || r.C,
	r.S || CAST(r.A + r.B - BITAND(r.A, r.B) AS VarChar(255)),
	CAST(r.A + r.B - BITAND(r.A, r.B) AS VarChar(255)) || r.S,
	r.S || ',' || (r.B + r.C - BITAND(r.B, r.C)) || ',' || r.C,
	r.S || r.S || CAST(r.A + r.B - BITAND(r.A, r.B) AS VarChar(255)),
	r.S || ',' || -(r.B + r.C - BITAND(r.B, r.C)) || ',' || r.C,
	r.S || ',' || (-1 - (r.B + r.C - BITAND(r.B, r.C))) || ',' || r.C,
	r.S || CAST(r.A + r.B - BITAND(r.A, r.B) * 2 AS VarChar(255)),
	CAST(r.A + r.B - BITAND(r.A, r.B) * 2 AS VarChar(255)) || r.S,
	r.S || ',' || (r.B + r.C - BITAND(r.B, r.C) * 2) || ',' || r.C,
	r.S || r.S || CAST(r.A + r.B - BITAND(r.A, r.B) * 2 AS VarChar(255)),
	r.S || ',' || -(r.B + r.C - BITAND(r.B, r.C) * 2) || ',' || r.C,
	r.S || ',' || (-1 - (r.B + r.C - BITAND(r.B, r.C) * 2)) || ',' || r.C,
	r.S || CAST(-r.A AS VarChar(255)),
	CAST(-r.A AS VarChar(255)) || r.S,
	r.S || CAST(-1 - r.A AS VarChar(255)),
	CAST(-1 - r.A AS VarChar(255)) || r.S,
	r.S || '-5',
	'-5' || r.S
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r.S || '-5',
	'-5' || r.S
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

