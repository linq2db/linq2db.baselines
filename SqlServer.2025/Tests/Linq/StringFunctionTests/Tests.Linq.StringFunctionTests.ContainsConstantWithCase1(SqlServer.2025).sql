﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE N'%Joh%' ESCAPE N'~' OR CHARINDEX(Convert(VarBinary(8000), N'Joh'), Convert(VarBinary(8000), [p].[FirstName])) <= 0) AND
	[p].[PersonID] = 1

