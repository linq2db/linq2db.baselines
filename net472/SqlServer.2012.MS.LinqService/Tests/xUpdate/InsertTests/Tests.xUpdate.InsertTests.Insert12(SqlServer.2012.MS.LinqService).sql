﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Max([t].[PersonID])
FROM
	[Person] [t]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @id Int -- Int32
SET     @id = 4

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > @id

