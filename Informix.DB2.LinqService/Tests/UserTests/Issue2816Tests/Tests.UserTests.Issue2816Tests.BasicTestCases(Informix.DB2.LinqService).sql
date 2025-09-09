BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p.Id,
	p.Text
FROM
	Issue2816Table p
WHERE
	p.Text IS NULL OR LTRIM(p.Text, '	' || chr(10) || '' || chr(13) || '  ') = ''

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.Text
FROM
	Issue2816Table t1

