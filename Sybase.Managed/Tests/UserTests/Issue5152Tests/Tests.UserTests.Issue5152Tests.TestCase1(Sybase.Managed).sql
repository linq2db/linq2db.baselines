-- Sybase.Managed Sybase

UPDATE
	[SampleClass]
SET
	[MyString] = Str_Replace(Str_Replace([SampleClass].[MyString], ';Example', NULL), 'Example', NULL)
WHERE
	[SampleClass].[MyString] LIKE '%Example%' ESCAPE '~'

