-- SqlServer.2016
UPDATE
	[SpecialScalarSample]
SET
	[MyString] = Replace(Replace([SpecialScalarSample].[MyString], N';Example', NULL), N'Example', NULL)
WHERE
	[SpecialScalarSample].[MyString] LIKE N'%Example%' ESCAPE N'~'

