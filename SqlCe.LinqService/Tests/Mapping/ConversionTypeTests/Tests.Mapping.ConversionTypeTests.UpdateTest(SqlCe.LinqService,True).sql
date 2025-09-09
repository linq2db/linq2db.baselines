BeforeExecute
-- SqlCe (asynchronously)

UPDATE
	[TrimTestTable]
SET
	[Data] = '***III***'
WHERE
	[TrimTestTable].[ID] = 3

BeforeExecute
-- SqlCe (asynchronously)

UPDATE
	[TrimTestTable]
SET
	[Data] = '***OOO***'
WHERE
	[TrimTestTable].[Data] = '***XXX***'

BeforeExecute
-- SqlCe (asynchronously)

UPDATE
	[TrimTestTable]
SET
	[Data] = '***SSS***'
WHERE
	[TrimTestTable].[Data] = '***HHH***'

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[r].[ID],
	[r].[Data] as [Data_1]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[r].[ID],
	[r].[Data] as [Data_1]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

