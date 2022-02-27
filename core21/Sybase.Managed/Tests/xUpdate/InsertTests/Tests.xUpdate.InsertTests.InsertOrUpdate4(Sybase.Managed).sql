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
DECLARE @i_1 Integer -- Int32
SET     @i_1 = 0
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @diagnosis UniVarChar(3) -- String
SET     @diagnosis = 'abc'
DECLARE @i Integer -- Int32
SET     @i = 0

BEGIN TRAN

UPDATE
	[Patient]
SET
	[t1].[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]) + @i_1)
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
		Convert(NVarChar(11), Len(@diagnosis) + @i)
	)
END

COMMIT

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @i_1 Integer -- Int32
SET     @i_1 = 1
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @diagnosis UniVarChar(3) -- String
SET     @diagnosis = 'abc'
DECLARE @i Integer -- Int32
SET     @i = 1

BEGIN TRAN

UPDATE
	[Patient]
SET
	[t1].[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]) + @i_1)
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
		Convert(NVarChar(11), Len(@diagnosis) + @i)
	)
END

COMMIT

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @i_1 Integer -- Int32
SET     @i_1 = 2
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @diagnosis UniVarChar(3) -- String
SET     @diagnosis = 'abc'
DECLARE @i Integer -- Int32
SET     @i = 2

BEGIN TRAN

UPDATE
	[Patient]
SET
	[t1].[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]) + @i_1)
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
		Convert(NVarChar(11), Len(@diagnosis) + @i)
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

