-- SqlServer.2016.MS SqlServer.2016

UPDATE
	[SampleClass]
SET
	[MyString] = Replace(Replace([SampleClass].[MyString], N';Example', NULL), N'Example', NULL)
WHERE
	[SampleClass].[MyString] LIKE N'%Example%' ESCAPE N'~'

