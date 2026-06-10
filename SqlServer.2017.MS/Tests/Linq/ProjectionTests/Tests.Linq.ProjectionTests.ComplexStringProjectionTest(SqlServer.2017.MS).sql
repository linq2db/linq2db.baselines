-- SqlServer.2017.MS SqlServer.2017
DECLARE @data NVarChar(4000) -- String
SET     @data = NULL

INSERT INTO [StringTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	2,
	@data
)

-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (2)
	[t].[ID],
	[t].[Data]
FROM
	[StringTestTable] [t]
WHERE
	[t].[ID] = 2

