﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'233bf399-9710-4e79-873d-2ec7bf1e0001'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Person'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'X'
DECLARE @Gender NVarChar(4000) -- String
SET     @Gender = N'M'

[TestDataContained]..[Person_Insert]

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'233bf399-9710-4e79-873d-2ec7bf1e0001'

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] = @FirstName

