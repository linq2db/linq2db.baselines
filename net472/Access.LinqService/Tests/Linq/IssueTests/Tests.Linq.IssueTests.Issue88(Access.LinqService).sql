BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb

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
-- Access AccessOleDb
DECLARE @gender_1 WChar(1) -- StringFixedLength
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
-- Access AccessOleDb
DECLARE @gender_1 WChar(1) -- StringFixedLength
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

