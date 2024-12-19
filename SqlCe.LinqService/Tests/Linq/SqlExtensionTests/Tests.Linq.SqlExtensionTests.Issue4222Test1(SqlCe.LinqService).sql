BeforeExecute
-- SqlCe

DROP TABLE [Entry]

BeforeExecute
-- SqlCe

CREATE TABLE [Entry]
(
	[Id]     UNIQUEIDENTIFIER NOT NULL,
	[RecSrc] NVarChar(255)        NULL,
	[Value]  Int              NOT NULL
)

BeforeExecute
-- SqlCe

SELECT
	[e].[Id],
	[e].[RecSrc],
	[e].[Value] as [Value_1]
FROM
	[Entry] [e]
WHERE
	[e].[RecSrc] = 'default' AND [e].[Value] = 2007

BeforeExecute
-- SqlCe

DROP TABLE [Entry]

