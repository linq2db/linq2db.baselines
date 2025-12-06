-- SqlCe

UPDATE
	[Person]
SET
	[FirstName] = [Person].[FirstName]

-- SqlCe

UPDATE
	[Person] WITH (TABLOCK)
SET
	[FirstName] = [Person].[FirstName]

