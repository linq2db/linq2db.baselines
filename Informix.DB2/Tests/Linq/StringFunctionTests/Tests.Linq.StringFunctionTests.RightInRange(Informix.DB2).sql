-- Informix.DB2 Informix
SELECT
	r.Id,
	Substr(r.S, (CHAR_LENGTH(r.S || '.') - 1) - r.N + 1, r.N)
FROM
	RightValues r
ORDER BY
	r.Id

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.S,
	t1.N
FROM
	RightValues t1

-- Informix.DB2 Informix
SELECT
	r.Id,
	r.S,
	r.N
FROM
	RightValues r
WHERE
	Substr(r.S, (CHAR_LENGTH(r.S || '.') - 1) - r.N + 1, r.N) = 'ohn'

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.S,
	t1.N
FROM
	RightValues t1

