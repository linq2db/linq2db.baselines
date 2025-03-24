﻿BeforeExecute
--  SqlServer.2022

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
--  SqlServer.2022 (asynchronously)
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'233bf399-9710-4e79-873d-2ec7bf1e0001'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Person'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'X'
DECLARE @Gender NVarChar(4000) -- String
SET     @Gender = N'M'

[TestData]..[Person_Insert]

BeforeExecute
--  SqlServer.2022
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'233bf399-9710-4e79-873d-2ec7bf1e0001'

DELETE [p]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @FirstName

