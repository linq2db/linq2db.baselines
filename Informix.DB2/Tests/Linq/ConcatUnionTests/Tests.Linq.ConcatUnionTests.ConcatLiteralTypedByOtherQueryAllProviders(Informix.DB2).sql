-- Informix.DB2 Informix
SELECT
	p.Id,
	p.Str
FROM
	SetLiteralTypingTable p
UNION ALL
SELECT
	p_1.Id,
	'str'::VarChar
FROM
	SetLiteralTypingTable p_1

-- Informix.DB2 Informix
SELECT
	p.Id,
	'str'::VarChar
FROM
	SetLiteralTypingTable p
UNION ALL
SELECT
	p_1.Id,
	p_1.Str
FROM
	SetLiteralTypingTable p_1

