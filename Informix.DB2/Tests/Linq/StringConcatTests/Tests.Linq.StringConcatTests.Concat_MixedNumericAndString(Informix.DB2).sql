-- Informix.DB2 Informix

SELECT
	e.Id
FROM
	ConcatTestEntity e
WHERE
	(To_Char(e.Num) || '-' || Nvl(e.StrReq, '')) = '100-Programmer'

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Str1,
	t1.Str2,
	t1.StrReq,
	t1.Num
FROM
	ConcatTestEntity t1

