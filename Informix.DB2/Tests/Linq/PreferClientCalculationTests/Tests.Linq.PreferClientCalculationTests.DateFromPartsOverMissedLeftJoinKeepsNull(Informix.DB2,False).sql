-- Informix.DB2 Informix
SELECT
	e."Date",
	Mdy(j.Value1, j.Value1, j.Value1),
	Mdy(j.Value1, j.Value1, j.Value1),
	To_Date(LPad(Year(e."Date"), 4, '0') || '-01-01 ' || LPad(Nvl(j.Value1, 0), 2, '0') || ':00:00', '%Y-%m-%d %H:%M:%S')
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

