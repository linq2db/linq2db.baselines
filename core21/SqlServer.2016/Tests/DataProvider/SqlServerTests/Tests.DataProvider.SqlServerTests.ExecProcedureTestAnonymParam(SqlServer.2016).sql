BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Person'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'X'
DECLARE @Gender NVarChar(4000) -- String
SET     @Gender = N'M'

[TestData2016]..[Person_Insert]

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] = @FirstName

