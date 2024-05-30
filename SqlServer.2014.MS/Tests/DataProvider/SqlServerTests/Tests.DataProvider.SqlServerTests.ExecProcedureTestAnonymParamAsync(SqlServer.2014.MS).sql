BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Person'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'X'
DECLARE @Gender NVarChar(4000) -- String
SET     @Gender = N'M'

[TestDataMS]..[Person_Insert]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'a948600d-de21-4f74-8ac2-9516b287076e'

DELETE [p]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @FirstName

