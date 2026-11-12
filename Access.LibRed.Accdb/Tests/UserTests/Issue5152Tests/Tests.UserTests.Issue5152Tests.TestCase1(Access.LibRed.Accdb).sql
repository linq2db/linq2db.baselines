-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	[SampleClass] [sample_1]
SET
	[sample_1].[MyString] = Replace(Replace([sample_1].[MyString], ';Example', NULL), 'Example', NULL)
WHERE
	[sample_1].[MyString] LIKE '%Example%'

