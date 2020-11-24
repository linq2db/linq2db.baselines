BeforeExecute
-- Sybase.Managed Sybase

sp_chgattribute Person, 'identity_burn_max', 0, '4'

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

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
-- Sybase.Managed Sybase (asynchronously)
DECLARE @i Integer -- Int32
SET     @i = 0
DECLARE @id Integer -- Int32
SET     @id = 5

BEGIN TRAN

UPDATE
	[Patient]
SET
	[t1].[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]) + @i)
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id

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

COMMIT

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @i Integer -- Int32
SET     @i = 1
DECLARE @id Integer -- Int32
SET     @id = 5

BEGIN TRAN

UPDATE
	[Patient]
SET
	[t1].[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]) + @i)
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id

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

COMMIT

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @i Integer -- Int32
SET     @i = 2
DECLARE @id Integer -- Int32
SET     @id = 5

BEGIN TRAN

UPDATE
	[Patient]
SET
	[t1].[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]) + @i)
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id

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

COMMIT

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

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM [Patient]
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM [Person]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

