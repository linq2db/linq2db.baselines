﻿BeforeExecute
-- SqlCe

ALTER TABLE Person ALTER COLUMN PersonID IDENTITY(5,1)

BeforeExecute
-- SqlCe
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'test'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'subject'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender NVarChar(1) -- String
SET     @Gender = 'U'

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

BeforeExecute
-- SqlCe

SELECT @@IDENTITY

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 5

SELECT
	1 as [c1]
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @Diagnosis NVarChar(8) -- String
SET     @Diagnosis = 'negative'

INSERT INTO [Patient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@id,
	@Diagnosis
)

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 5

SELECT
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 5

SELECT
	1 as [c1]
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 5

SELECT
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

