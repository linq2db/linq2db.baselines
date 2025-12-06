-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	MAX([t1].[PersonID])
FROM
	[Person] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

MERGE INTO [Person] [Target]
USING (
	SELECT
		[p].[PersonID] + 50 as [ID],
		[p].[FirstName],
		[p].[LastName],
		[p].[MiddleName],
		[p].[Gender]
	FROM
		[Person] [p]
) [Source]
(
	[ID],
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
ON ([Target].[PersonID] + 50 = [Source].[ID] AND [Target].[FirstName] <> N'first 3')

WHEN NOT MATCHED AND [Source].[FirstName] = N'first 3' THEN
INSERT
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	[Source].[FirstName],
	[Source].[LastName],
	[Source].[MiddleName],
	[Source].[Gender]
)
;

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]

