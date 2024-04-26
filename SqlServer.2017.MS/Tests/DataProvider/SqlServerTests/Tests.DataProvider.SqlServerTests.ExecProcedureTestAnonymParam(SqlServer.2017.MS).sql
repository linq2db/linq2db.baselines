BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Person'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'X'
DECLARE @Gender NVarChar(4000) -- String
SET     @Gender = N'M'

[TestDataMS]..[Person_Insert]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

DELETE [p]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @FirstName

