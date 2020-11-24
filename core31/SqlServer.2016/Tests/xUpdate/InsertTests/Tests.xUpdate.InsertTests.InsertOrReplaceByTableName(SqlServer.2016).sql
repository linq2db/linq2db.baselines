BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[xxPatient11]', N'U') IS NOT NULL)
	DROP TABLE [xxPatient11]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [xxPatient11]
(
	[PersonID]  Int            NOT NULL,
	[Diagnosis] NVarChar(4000)     NULL,

	CONSTRAINT [PK_xxPatient11] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC1'

MERGE INTO [xxPatient11] [t1]
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
-- SqlServer.2016 SqlServer.2012
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC2'

MERGE INTO [xxPatient11] [t1]
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
-- SqlServer.2016 SqlServer.2012

SELECT
	Count(*)
FROM
	[xxPatient11] [t1]

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC1'

MERGE INTO [xxPatient11] [t1]
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
-- SqlServer.2016 SqlServer.2012
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC2'

MERGE INTO [xxPatient11] [t1]
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
-- SqlServer.2016 SqlServer.2012

SELECT
	Count(*)
FROM
	[xxPatient11] [t1]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[xxPatient11]', N'U') IS NOT NULL)
	DROP TABLE [xxPatient11]

