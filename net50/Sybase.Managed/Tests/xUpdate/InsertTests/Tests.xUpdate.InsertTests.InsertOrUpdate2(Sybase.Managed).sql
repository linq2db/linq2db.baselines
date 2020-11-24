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
	'test',
	'subject',
	'U'
)

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 5

BEGIN TRAN

IF NOT EXISTS(
	SELECT 1 
	FROM
		[Patient] [t1]
	WHERE
		[t1].[PersonID] = @id
)
BEGIN
	INSERT INTO [Patient]
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		'negative'
	)
END

COMMIT

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
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

BEGIN TRAN

IF NOT EXISTS(
	SELECT 1 
	FROM
		[Patient] [t1]
	WHERE
		[t1].[PersonID] = @id
)
BEGIN
	INSERT INTO [Patient]
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		'positive'
	)
END

COMMIT

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
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

