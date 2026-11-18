-- Informix.DB2 Informix
SELECT
	Mdy(j.Value1, j.Value1, j.Value1),
	Mdy(j.Value1, j.Value1, j.Value1)
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

