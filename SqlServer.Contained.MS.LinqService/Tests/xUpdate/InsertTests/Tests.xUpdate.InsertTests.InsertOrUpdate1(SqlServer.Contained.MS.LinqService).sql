﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @i Int -- Int32
SET     @i = 0

MERGE INTO [Patient] [t1]
USING (SELECT @id AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Diagnosis] = CAST(Len([t1].[Diagnosis]) + @i AS NVarChar(11))
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		N'abc'
	);

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @i Int -- Int32
SET     @i = 1

MERGE INTO [Patient] [t1]
USING (SELECT @id AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Diagnosis] = CAST(Len([t1].[Diagnosis]) + @i AS NVarChar(11))
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		N'abc'
	);

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @i Int -- Int32
SET     @i = 2

MERGE INTO [Patient] [t1]
USING (SELECT @id AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Diagnosis] = CAST(Len([t1].[Diagnosis]) + @i AS NVarChar(11))
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		N'abc'
	);

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (2)
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

