-- Informix.DB2 Informix
SELECT
	p.Id,
	p.Text
FROM
	WhiteSpaceTextRow p
WHERE
	NOT (p.Text IS NULL OR LTRIM(p.Text, '	' || chr(10) || '' || chr(13) || '  ') = '')

