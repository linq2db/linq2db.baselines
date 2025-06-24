BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2008

SELECT
	MAX([t1].[PersonID])
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.2008
DECLARE @ID Int -- Int32
SET     @ID = 12

SET IDENTITY_INSERT [Person] ON
MERGE INTO [Person] [Target]
USING (
	SELECT
		[t1].[PersonID] as [source_ID],
		[a_Patient].[Diagnosis] as [source_Patient_Diagnosis]
	FROM
		[Person] [t1]
			INNER JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
) [Source]
(
	[source_ID],
	[source_Patient_Diagnosis]
)
ON ([Target].[PersonID] = [Source].[source_ID] AND [Target].[FirstName] <> N'first 3')

WHEN NOT MATCHED AND [Source].[source_Patient_Diagnosis] LIKE N'%sick%' ESCAPE N'~' THEN
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

BeforeExecute
-- SqlServer.2008

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

BeforeExecute
DisposeTransaction
