BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

