﻿BeforeExecute
-- Sybase.Managed Sybase

sp_chgattribute Person, 'identity_burn_max', 0, '4'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName UniVarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName UniVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

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

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'abc0'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'abc0'

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

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'abc1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'abc1'

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

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'abc2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'abc2'

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

