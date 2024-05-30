BeforeExecute
-- SqlCe

DROP TABLE [TrimTestTable]

BeforeExecute
-- SqlCe

CREATE TABLE [TrimTestTable]
(
	[ID]   Int          NOT NULL,
	[Data] NVarChar(50)     NULL,

	CONSTRAINT [PK_TrimTestTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
SELECT 1,'***OOO***'

BeforeExecute
-- SqlCe

SELECT
	[r].[ID],
	[r].[Data] as [Data_1]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlCe

SELECT
	[r].[ID],
	[r].[Data] as [Data_1]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlCe

DROP TABLE [TrimTestTable]

