BeforeExecute
-- SqlCe

DROP TABLE [TestInsertOrReplaceTable]

BeforeExecute
-- SqlCe

CREATE TABLE [TestInsertOrReplaceTable]
(
	[ID]         Int           NOT NULL,
	[FirstName]  NVarChar(255)     NULL,
	[LastName]   NVarChar(255)     NULL,
	[MiddleName] NVarChar(255)     NULL,

	CONSTRAINT [PK_TestInsertOrReplaceTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe

INSERT INTO [TestInsertOrReplaceTable]
(
	[ID],
	[FirstName]
)
VALUES
(
	123,
	'John'
)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[ID] = 123 AND [x].[FirstName] = 'John'

BeforeExecute
-- SqlCe

DROP TABLE [TestInsertOrReplaceTable]

