-- Informix.DB2 Informix

SELECT
	e.Id
FROM
	ConcatTestEntity e
WHERE
	(Nvl(e.Str1, '') || ' ' || Nvl(e.StrReq, '') || '!') = 'John Programmer!'

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Str1,
	t1.Str2,
	t1.StrReq,
	t1.Num
FROM
	ConcatTestEntity t1

