-- YDB Ydb

SELECT
	CAST(Re2::Replace('^[ab]+'u)(CAST(t.VarCharColumn AS String?), '') AS Utf8?) as c1
FROM
	StringTrimTable t
ORDER BY
	t.Id

