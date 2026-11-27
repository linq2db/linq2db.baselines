-- Informix.DB2 Informix
SELECT
	p.Id,
	'str1'::VarChar
FROM
	SetLiteralTypingTable p
UNION ALL
SELECT
	p_1.Id,
	'str2'::VarChar
FROM
	SetLiteralTypingTable p_1

-- Informix.DB2 Informix
SELECT
	p.Id,
	'str2'::VarChar
FROM
	SetLiteralTypingTable p
UNION ALL
SELECT
	p_1.Id,
	'str1'::VarChar
FROM
	SetLiteralTypingTable p_1

