-- SqlServer.2019.MS SqlServer.2019
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC1'

MERGE INTO [xxPatient] [t1]
USING (SELECT @PersonID AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Diagnosis] = @Diagnosis
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

-- SqlServer.2019.MS SqlServer.2019
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC2'

MERGE INTO [xxPatient] [t1]
USING (SELECT @PersonID AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Diagnosis] = @Diagnosis
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

-- SqlServer.2019.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[xxPatient] [t1]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC1'

MERGE INTO [xxPatient] [t1]
USING (SELECT @PersonID AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Diagnosis] = @Diagnosis
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

-- SqlServer.2019.MS SqlServer.2019
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC2'

MERGE INTO [xxPatient] [t1]
USING (SELECT @PersonID AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Diagnosis] = @Diagnosis
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

-- SqlServer.2019.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[xxPatient] [t1]

