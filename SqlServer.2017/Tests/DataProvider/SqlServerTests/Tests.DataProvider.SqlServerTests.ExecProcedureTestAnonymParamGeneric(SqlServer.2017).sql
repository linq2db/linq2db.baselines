-- SqlServer.2017

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2017
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Person'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'X'
DECLARE @Gender NVarChar(4000) -- String
SET     @Gender = N'M'

[TestData]..[Person_Insert]

-- SqlServer.2017
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

DELETE [p]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @FirstName

