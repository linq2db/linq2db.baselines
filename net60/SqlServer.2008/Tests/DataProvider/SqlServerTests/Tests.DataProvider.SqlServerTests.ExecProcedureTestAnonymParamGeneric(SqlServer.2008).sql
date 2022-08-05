﻿BeforeExecute
-- SqlServer.2008

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2008
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Person'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'X'
DECLARE @Gender NVarChar(4000) -- String
SET     @Gender = N'M'

[TestData]..[Person_Insert]

BeforeExecute
-- SqlServer.2008
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] = @FirstName

