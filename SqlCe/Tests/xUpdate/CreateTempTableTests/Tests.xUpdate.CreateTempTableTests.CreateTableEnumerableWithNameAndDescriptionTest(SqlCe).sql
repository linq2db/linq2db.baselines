-- SqlCe

DROP TABLE [TempTable]

-- SqlCe

CREATE TABLE [TempTable]
(
	[Name] NVarChar(20) NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY ([Name])
)

-- SqlCe

INSERT INTO [TempTable]
(
	[Name]
)
SELECT 'John'

-- SqlCe

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

-- SqlCe

DROP TABLE [TempTable]

