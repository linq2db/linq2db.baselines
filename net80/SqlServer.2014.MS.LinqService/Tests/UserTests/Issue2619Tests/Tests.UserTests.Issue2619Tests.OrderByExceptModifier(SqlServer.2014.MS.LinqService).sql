﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

SELECT
	[t2].[FirstName],
	[t2].[ID],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender]
FROM
	(
		SELECT TOP (@take)
			[t1].[FirstName],
			[t1].[PersonID] as [ID],
			[t1].[LastName],
			[t1].[MiddleName],
			[t1].[Gender]
		FROM
			[Person] [t1]
		ORDER BY
			[t1].[LastName]
	) [t2]
EXCEPT
SELECT
	[t4].[FirstName],
	[t4].[ID],
	[t4].[LastName],
	[t4].[MiddleName],
	[t4].[Gender]
FROM
	(
		SELECT TOP (@take_1)
			[t3].[FirstName],
			[t3].[PersonID] as [ID],
			[t3].[LastName],
			[t3].[MiddleName],
			[t3].[Gender]
		FROM
			[Person] [t3]
		ORDER BY
			[t3].[LastName]
	) [t4]

