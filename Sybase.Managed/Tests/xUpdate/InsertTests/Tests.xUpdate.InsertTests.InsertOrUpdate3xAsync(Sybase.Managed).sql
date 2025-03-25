BeforeExecute
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
-- Sybase.Managed Sybase (asynchronously)
DECLARE @i Integer -- Int32
SET     @i = 0
DECLARE @id2 Integer -- Int32
SET     @id2 = 5
DECLARE @id Integer -- Int32
SET     @id = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = CAST(CASE
		WHEN '' = [t1].[Diagnosis] THEN 0
		ELSE CHAR_LENGTH([t1].[Diagnosis])
	END + @i AS NVarChar(11))
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id2

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [Patient]
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		'abc'
	)
END

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @i Integer -- Int32
SET     @i = 1
DECLARE @id2 Integer -- Int32
SET     @id2 = 5
DECLARE @id Integer -- Int32
SET     @id = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = CAST(CASE
		WHEN '' = [t1].[Diagnosis] THEN 0
		ELSE CHAR_LENGTH([t1].[Diagnosis])
	END + @i AS NVarChar(11))
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id2

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [Patient]
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		'abc'
	)
END

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @i Integer -- Int32
SET     @i = 2
DECLARE @id2 Integer -- Int32
SET     @id2 = 5
DECLARE @id Integer -- Int32
SET     @id = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = CAST(CASE
		WHEN '' = [t1].[Diagnosis] THEN 0
		ELSE CHAR_LENGTH([t1].[Diagnosis])
	END + @i AS NVarChar(11))
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id2

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [Patient]
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		'abc'
	)
END

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT TOP 2
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

