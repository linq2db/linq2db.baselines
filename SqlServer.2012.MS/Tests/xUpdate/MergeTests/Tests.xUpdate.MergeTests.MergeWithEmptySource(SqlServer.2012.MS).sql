-- SqlServer.2012.MS SqlServer.2012

MERGE INTO [Person] [Target]
USING (
	SELECT NULL, NULL, NULL, NULL, NULL
	FROM [Person]	WHERE 1 = 0
)
 [Source]
(
	[ID],
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
ON ([Target].[PersonID] = [Source].[ID])

WHEN MATCHED THEN
UPDATE
SET
	[FirstName] = [Source].[FirstName],
	[LastName] = [Source].[LastName],
	[MiddleName] = [Source].[MiddleName],
	[Gender] = [Source].[Gender]

WHEN NOT MATCHED THEN
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

