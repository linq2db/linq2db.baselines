-- Informix.DB2 Informix

SELECT
	Nvl(e.Str1, '') || '/' || Nvl(e.StrReq, '')
FROM
	ConcatTestEntity e
ORDER BY
	e.Id

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Str1,
	t1.Str2,
	t1.StrReq,
	t1.Num
FROM
	ConcatTestEntity t1

