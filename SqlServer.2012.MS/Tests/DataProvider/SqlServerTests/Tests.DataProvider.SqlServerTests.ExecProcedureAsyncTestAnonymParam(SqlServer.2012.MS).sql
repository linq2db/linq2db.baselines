﻿BeforeExecute
--  SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
--  SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'233bf399-9710-4e79-873d-2ec7bf1e0001'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Person'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'X'
DECLARE @Gender NVarChar(4000) -- String
SET     @Gender = N'M'

[TestDataMS]..[Person_Insert]

BeforeExecute
--  SqlServer.2012.MS SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'233bf399-9710-4e79-873d-2ec7bf1e0001'

DELETE [p]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @FirstName

