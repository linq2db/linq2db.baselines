﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'Jo%' ESCAPE N'~' AND Convert(VarBinary(8000), LEFT([p].[FirstName], LEN(N'Jo'))) = Convert(VarBinary(8000), N'Jo') AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'jo%' ESCAPE N'~' AND Convert(VarBinary(8000), LEFT([p].[FirstName], LEN(N'jo'))) = Convert(VarBinary(8000), N'jo') AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE N'Jo%' ESCAPE N'~' OR NOT Convert(VarBinary(8000), LEFT([p].[FirstName], LEN(N'Jo'))) = Convert(VarBinary(8000), N'Jo')) AND
	[p].[PersonID] = 1

