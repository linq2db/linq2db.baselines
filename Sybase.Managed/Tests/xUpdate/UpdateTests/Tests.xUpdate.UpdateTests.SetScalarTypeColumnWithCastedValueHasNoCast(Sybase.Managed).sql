-- Sybase.Managed Sybase
UPDATE
	[SpecialScalarSample]
SET
	[MyString] = Str_Replace(Str_Replace([SpecialScalarSample].[MyString], ';Example', NULL), 'Example', NULL)
WHERE
	[SpecialScalarSample].[MyString] LIKE '%Example%' ESCAPE '~'

