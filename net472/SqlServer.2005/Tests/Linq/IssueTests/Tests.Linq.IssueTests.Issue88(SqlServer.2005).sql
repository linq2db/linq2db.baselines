BeforeExecute
-- SqlServer.2005

SELECT 
	[_].[FirstName], 
	[_].[PersonID], 
	[_].[LastName], 
	[_].[MiddleName], 
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND [_].[Gender] = N'M'

BeforeExecute
-- SqlServer.2005

SELECT 
	[_].[FirstName], 
	[_].[PersonID], 
	[_].[LastName], 
	[_].[MiddleName], 
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND N'M' = [_].[Gender]

BeforeExecute
-- SqlServer.2005
DECLARE @gender_1 NChar(1) -- StringFixedLength
SET     @gender_1 = N'M'

SELECT 
	[_].[FirstName], 
	[_].[PersonID], 
	[_].[LastName], 
	[_].[MiddleName], 
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND [_].[Gender] = @gender_1

BeforeExecute
-- SqlServer.2005
DECLARE @gender_1 NChar(1) -- StringFixedLength
SET     @gender_1 = N'M'

SELECT 
	[_].[FirstName], 
	[_].[PersonID], 
	[_].[LastName], 
	[_].[MiddleName], 
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND @gender_1 = [_].[Gender]

