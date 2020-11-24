BeforeExecute
-- Sybase.Managed Sybase

sp_chgattribute Person, 'identity_burn_max', 0, '4'

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'John',
	'Shepard',
	'M'
)

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'abc0'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'abc0'

BEGIN TRAN

UPDATE
	[Patient]
SET
	[t1].[Diagnosis] = @Diagnosis_1
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

COMMIT

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'abc1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'abc1'

BEGIN TRAN

UPDATE
	[Patient]
SET
	[t1].[Diagnosis] = @Diagnosis_1
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

COMMIT

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'abc2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'abc2'

BEGIN TRAN

UPDATE
	[Patient]
SET
	[t1].[Diagnosis] = @Diagnosis_1
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

COMMIT

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT TOP 2
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM [Patient]
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM [Person]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

