﻿BeforeExecute
-- SqlServer.2008

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND [p].[FirstName] LIKE N'Jo%' ESCAPE N'~' AND
	Convert(VarBinary(8000), LEFT([p].[FirstName], 2)) = Convert(VarBinary(8000), N'Jo')

BeforeExecute
-- SqlServer.2008

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND [p].[FirstName] LIKE N'jo%' ESCAPE N'~' AND
	Convert(VarBinary(8000), LEFT([p].[FirstName], 2)) = Convert(VarBinary(8000), N'jo')

BeforeExecute
-- SqlServer.2008

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE N'Jo%' ESCAPE N'~' OR Convert(VarBinary(8000), LEFT([p].[FirstName], 2)) <> Convert(VarBinary(8000), N'Jo')) AND
	[p].[PersonID] = 1

