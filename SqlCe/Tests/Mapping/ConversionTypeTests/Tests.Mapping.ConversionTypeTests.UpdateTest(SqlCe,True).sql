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
SELECT 1,'***XXX***' UNION ALL
SELECT 2,'***HHH***' UNION ALL
SELECT 3,'***VVV***'

BeforeExecute
-- SqlCe

UPDATE
	[TrimTestTable]
SET
	[Data] = '***III***'
WHERE
	[TrimTestTable].[ID] = 3

BeforeExecute
-- SqlCe

UPDATE
	[TrimTestTable]
SET
	[Data] = '***OOO***'
WHERE
	[TrimTestTable].[Data] = '***XXX***' AND [TrimTestTable].[Data] IS NOT NULL

BeforeExecute
-- SqlCe

UPDATE
	[TrimTestTable]
SET
	[Data] = '***SSS***'
WHERE
	[TrimTestTable].[Data] = '***HHH***' AND [TrimTestTable].[Data] IS NOT NULL

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

