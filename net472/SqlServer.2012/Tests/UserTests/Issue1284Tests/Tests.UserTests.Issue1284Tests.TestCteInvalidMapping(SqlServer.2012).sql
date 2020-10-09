BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

WITH [CTE_1]
(
	[ID],
	[rn],
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
AS
(
	SELECT 
		[person_1].[PersonID], 
		1, 
		[person_1].[FirstName], 
		[person_1].[LastName], 
		[person_1].[MiddleName], 
		[person_1].[Gender]
	FROM
		[Person] [person_1]
)
SELECT TOP (@take) 
	[t1].[FirstName], 
	[t1].[ID], 
	[t1].[LastName], 
	[t1].[MiddleName], 
	[t1].[Gender]
FROM
	[CTE_1] [t1]

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[person_1].[FirstName], 
	[person_1].[PersonID], 
	[person_1].[LastName], 
	[person_1].[MiddleName], 
	[person_1].[Gender]
FROM
	[Person] [person_1]

