-- SQLite.MS SQLite

UPDATE
	[SampleClass]
SET
	[MyString] = Replace(Replace([SampleClass].[MyString], ';Example', NULL), 'Example', NULL)
WHERE
	[SampleClass].[MyString] LIKE '%Example%' ESCAPE '~'

