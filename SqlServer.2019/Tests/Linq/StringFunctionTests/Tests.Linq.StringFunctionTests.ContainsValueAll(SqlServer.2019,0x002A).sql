BeforeExecute
-- SqlServer.2019
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123*456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE N'%' + Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(N'*', N'~', N'~~'), N'%', N'~%'), N'_', N'~_'), N'?', N'~?'), N'*', N'~*'), N'#', N'~#'), N'[', N'~['), N']', N'~]') + N'%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2019
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123*456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE N'%' + Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(N'*', N'~', N'~~'), N'%', N'~%'), N'_', N'~_'), N'?', N'~?'), N'*', N'~*'), N'#', N'~#'), N'[', N'~['), N']', N'~]') + N'%' ESCAPE N'~'

