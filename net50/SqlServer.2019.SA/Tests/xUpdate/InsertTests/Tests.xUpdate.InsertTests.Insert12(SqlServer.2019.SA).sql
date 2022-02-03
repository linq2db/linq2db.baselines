﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT
	Max([t].[PersonID])
FROM
	[Person] [t]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'FirstName'
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = N'F'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	@FirstName,
	N'LastName',
	@Gender
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 4

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > @id

