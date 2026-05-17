-- SqlServer.2012.MS SqlServer.2012

SELECT
	MAX([t1].[PersonID])
FROM
	[Person] [t1]

-- SqlServer.2012.MS SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 12

SET IDENTITY_INSERT [Person] ON
MERGE INTO [Person] [Target]
USING (
	SELECT
		[t1].[PersonID] as [ID],
		[a_Patient].[Diagnosis] as [Patient_Diagnosis]
	FROM
		[Person] [t1]
			INNER JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
) [Source]
(
	[ID],
	[Patient_Diagnosis]
)
ON ([Target].[PersonID] = [Source].[ID] AND [Target].[FirstName] <> N'first 3')

WHEN NOT MATCHED AND [Source].[Patient_Diagnosis] LIKE N'%sick%' ESCAPE N'~' THEN
INSERT
(
	[PersonID],
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	@ID,
	N'Inserted 1',
	N'Inserted 2',
	'M'
)
;
SET IDENTITY_INSERT [Person] OFF

-- SqlServer.2012.MS SqlServer.2012

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

