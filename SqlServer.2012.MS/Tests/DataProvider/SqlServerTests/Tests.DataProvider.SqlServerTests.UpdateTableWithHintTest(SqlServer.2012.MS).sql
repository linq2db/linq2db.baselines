-- SqlServer.2012.MS SqlServer.2012

UPDATE
	[Person]
SET
	[FirstName] = [Person].[FirstName]

-- SqlServer.2012.MS SqlServer.2012

UPDATE
	[t1]
SET
	[t1].[FirstName] = [t1].[FirstName]
FROM
	[Person] [t1] WITH (TABLOCK)

