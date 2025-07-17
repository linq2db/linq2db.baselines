BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'John'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Shepard'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'abc0'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = @Diagnosis
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [Patient]
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@PersonID,
		@Diagnosis
	)
END

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'abc1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = @Diagnosis
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [Patient]
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@PersonID,
		@Diagnosis
	)
END

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'abc2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = @Diagnosis
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [Patient]
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@PersonID,
		@Diagnosis
	)
END

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (2)
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

