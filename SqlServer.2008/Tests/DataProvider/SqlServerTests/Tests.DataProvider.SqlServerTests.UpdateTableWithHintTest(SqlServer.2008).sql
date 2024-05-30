BeforeExecute
-- SqlServer.2008

UPDATE
	[Person]
SET
	[FirstName] = [Person].[FirstName]

BeforeExecute
-- SqlServer.2008

UPDATE
	[t1]
SET
	[t1].[FirstName] = [t1].[FirstName]
FROM
	[Person] [t1] WITH (TABLOCK)

