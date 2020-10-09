BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	[_].[FirstName], 
	[_].[PersonID], 
	[_].[LastName], 
	[_].[MiddleName], 
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND [_].[Gender] = 'M'

BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	[_].[FirstName], 
	[_].[PersonID], 
	[_].[LastName], 
	[_].[MiddleName], 
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND 'M' = [_].[Gender]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @gender_1 UniChar -- StringFixedLength
SET     @gender_1 = 'M'

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
-- Sybase.Managed Sybase
DECLARE @gender_1 UniChar -- StringFixedLength
SET     @gender_1 = 'M'

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

