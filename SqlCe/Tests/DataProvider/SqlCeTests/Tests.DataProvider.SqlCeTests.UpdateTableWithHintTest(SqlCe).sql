BeforeExecute
-- SqlCe

UPDATE
	[Person]
SET
	[FirstName] = [Person].[FirstName]

BeforeExecute
-- SqlCe

UPDATE
	[Person] WITH (TABLOCK)
SET
	[FirstName] = [Person].[FirstName]

