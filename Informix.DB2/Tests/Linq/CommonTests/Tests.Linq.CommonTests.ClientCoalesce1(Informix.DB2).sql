-- Informix.DB2 Informix
SELECT
	x.Value1
FROM
	Parent x
WHERE
	Nvl(x.Value1, 100::Int) > 10

-- Informix.DB2 Informix
SELECT
	p.Value1
FROM
	Parent p

