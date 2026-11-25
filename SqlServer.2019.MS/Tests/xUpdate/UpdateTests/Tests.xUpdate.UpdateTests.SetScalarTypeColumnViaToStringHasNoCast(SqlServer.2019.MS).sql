-- SqlServer.2019.MS SqlServer.2019
UPDATE
	[SpecialScalarSample]
SET
	[MyString] = Replace(Replace([SpecialScalarSample].[MyString], N';Example', NULL), N'Example', NULL)
WHERE
	[SpecialScalarSample].[MyString] LIKE N'%Example%' ESCAPE N'~'

