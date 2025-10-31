-- Informix.DB2 Informix

SELECT
	p.Id,
	p.Text
FROM
	Issue2816Table p
WHERE
	NOT (p.Text IS NULL OR LTRIM(p.Text, '	' || chr(10) || '' || chr(13) || '  ') = '')

