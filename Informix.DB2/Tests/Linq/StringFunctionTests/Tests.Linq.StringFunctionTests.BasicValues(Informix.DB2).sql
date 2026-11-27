-- Informix.DB2 Informix
SELECT
	p.Id,
	p.Text
FROM
	WhiteSpaceTextRow p
WHERE
	p.Text IS NULL OR LTRIM(p.Text, '	' || chr(10) || '' || chr(13) || '  ') = ''

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.Text
FROM
	WhiteSpaceTextRow t1

