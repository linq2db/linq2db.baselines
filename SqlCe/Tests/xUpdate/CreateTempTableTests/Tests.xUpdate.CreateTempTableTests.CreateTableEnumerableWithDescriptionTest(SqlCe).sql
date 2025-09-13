BeforeExecute
-- SqlCe

DROP TABLE [TempTable]

BeforeExecute
-- SqlCe

CREATE TABLE [TempTable]
(
	[Name] NVarChar(20) NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY ([Name])
)

BeforeExecute
-- SqlCe

INSERT INTO [TempTable]
(
	[Name]
)
SELECT 'John'

BeforeExecute
-- SqlCe

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

BeforeExecute
-- SqlCe

DROP TABLE [TempTable]

