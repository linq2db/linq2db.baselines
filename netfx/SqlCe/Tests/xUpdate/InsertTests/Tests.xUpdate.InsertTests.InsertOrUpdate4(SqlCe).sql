﻿BeforeExecute
-- SqlCe

ALTER TABLE Person ALTER COLUMN PersonID IDENTITY(5,1)

BeforeExecute
-- SqlCe
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender NVarChar(1) -- String
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

BeforeExecute
-- SqlCe

SELECT @@IDENTITY

BeforeExecute
-- SqlCe
DECLARE @i Int -- Int32
SET     @i = 0
DECLARE @id Int -- Int32
SET     @id = 5

UPDATE
	[Patient]
SET
	[Patient].[Diagnosis] = Convert(NVarChar(11), Len([Patient].[Diagnosis]) + @i)
WHERE
	[Patient].[PersonID] = @id

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @diagnosis NVarChar(3) -- String
SET     @diagnosis = 'abc'
DECLARE @i Int -- Int32
SET     @i = 0

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

BeforeExecute
-- SqlCe
DECLARE @i Int -- Int32
SET     @i = 1
DECLARE @id Int -- Int32
SET     @id = 5

UPDATE
	[Patient]
SET
	[Patient].[Diagnosis] = Convert(NVarChar(11), Len([Patient].[Diagnosis]) + @i)
WHERE
	[Patient].[PersonID] = @id

BeforeExecute
-- SqlCe
DECLARE @i Int -- Int32
SET     @i = 2
DECLARE @id Int -- Int32
SET     @id = 5

UPDATE
	[Patient]
SET
	[Patient].[Diagnosis] = Convert(NVarChar(11), Len([Patient].[Diagnosis]) + @i)
WHERE
	[Patient].[PersonID] = @id

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (@take)
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

