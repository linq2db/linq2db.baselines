BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
OUTPUT
	INSERTED.[ID],
	INSERTED.[Data]
SELECT
	[t1].[ID] + 1,
	N'***HHH***'
FROM
	[TrimTestTable] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

