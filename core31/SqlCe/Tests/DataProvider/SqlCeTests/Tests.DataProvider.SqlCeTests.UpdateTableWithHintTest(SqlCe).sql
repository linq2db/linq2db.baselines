BeforeExecute
-- SqlCe

UPDATE
	[Person]
SET
	[Person].[FirstName] = [Person].[FirstName]

BeforeExecute
-- SqlCe

UPDATE
	[Person]  WITH (TABLOCK)
SET
	[Person].[FirstName] = [Person].[FirstName]

