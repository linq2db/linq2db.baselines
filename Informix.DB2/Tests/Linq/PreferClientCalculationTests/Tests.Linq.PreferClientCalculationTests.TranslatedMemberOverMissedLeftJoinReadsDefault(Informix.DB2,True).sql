-- Informix.DB2 Informix
SELECT
	e.Value1,
	To_Char(Nvl(j.Value1, 0)),
	Lower(To_Char(Nvl(j."Key", '00000000-0000-0000-0000-000000000000'))),
	CASE
		WHEN Nvl(j.Value1, 0) >= 5 THEN Nvl(j.Value1, 0)
		ELSE 5
	END,
	CASE
		WHEN Nvl(j.Value1, 0) <= -5 THEN Nvl(j.Value1, 0)
		ELSE -5
	END,
	To_Char(Nvl(j.Value1, 0)) || '!',
	Nvl(j.Name, '') || '!',
	j."Date" + Interval (10) Day to Day,
	Year(j."Date" + Interval (10) Day to Day),
	Day(j."Date" + Interval (10) Day to Day)
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

