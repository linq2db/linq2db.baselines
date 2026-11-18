-- Informix.DB2 Informix
SELECT
	e.Id,
	To_Char(Nvl(j.Value1, 0)),
	Nvl(j.Value1, 0) + 1
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON e.Id + 1000 = j.Id

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.Value1,
	t1."Date",
	t1."Key",
	t1.Name
FROM
	TranslatedMemberEntity t1

