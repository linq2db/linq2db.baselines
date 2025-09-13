BeforeExecute
-- SqlCe (asynchronously)

DROP TABLE [TempTable]

BeforeExecute
-- SqlCe (asynchronously)

CREATE TABLE [TempTable]
(
	[Name] NVarChar(20) NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY ([Name])
)

BeforeExecute
-- SqlCe (asynchronously)

INSERT INTO [TempTable]
(
	[Name]
)
SELECT 'John'

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

BeforeExecute
-- SqlCe (asynchronously)

DROP TABLE [TempTable]

