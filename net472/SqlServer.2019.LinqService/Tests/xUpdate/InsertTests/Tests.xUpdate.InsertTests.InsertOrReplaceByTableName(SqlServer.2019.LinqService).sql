BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[xxPatient43]', N'U') IS NOT NULL)
	DROP TABLE [xxPatient43]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [xxPatient43]
(
	[PersonID]  Int            NOT NULL,
	[Diagnosis] NVarChar(4000)     NULL,

	CONSTRAINT [PK_xxPatient43] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC1'

MERGE INTO [xxPatient43] [t1]
USING (SELECT @PersonID AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[t1].[Diagnosis] = @Diagnosis
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@PersonID,
		@Diagnosis
	);

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC2'

MERGE INTO [xxPatient43] [t1]
USING (SELECT @PersonID AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[t1].[Diagnosis] = @Diagnosis
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@PersonID,
		@Diagnosis
	);

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	Count(*)
FROM
	[xxPatient43] [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC1'

MERGE INTO [xxPatient43] [t1]
USING (SELECT @PersonID AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[t1].[Diagnosis] = @Diagnosis
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@PersonID,
		@Diagnosis
	);

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC2'

MERGE INTO [xxPatient43] [t1]
USING (SELECT @PersonID AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[t1].[Diagnosis] = @Diagnosis
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@PersonID,
		@Diagnosis
	);

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	Count(*)
FROM
	[xxPatient43] [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[xxPatient43]', N'U') IS NOT NULL)
	DROP TABLE [xxPatient43]

