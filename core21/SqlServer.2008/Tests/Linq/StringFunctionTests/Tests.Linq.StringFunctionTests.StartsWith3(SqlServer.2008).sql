BeforeExecute
-- SqlServer.2008
DECLARE @str_1 NVarChar(4000) -- String
SET     @str_1 = N'john123'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	@str_1 LIKE Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Lower([p].[FirstName]), N'~', N'~~'), N'%', N'~%'), N'_', N'~_'), N'?', N'~?'), N'*', N'~*'), N'#', N'~#'), N'[', N'~['), N']', N'~]') + N'%' ESCAPE N'~'

