-- SqlServer.2008
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

-- SqlServer.2008

SELECT TOP (2)
	[t].[ID],
	[t].[Data]
FROM
	[StringTestTable] [t]
WHERE
	[t].[ID] = 2

