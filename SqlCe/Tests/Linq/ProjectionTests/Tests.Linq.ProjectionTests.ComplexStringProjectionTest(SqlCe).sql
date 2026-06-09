-- SqlCe
DECLARE @data NVarChar -- String
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

-- SqlCe

SELECT TOP (2)
	[t].[ID],
	[t].[Data] as [Data_1]
FROM
	[StringTestTable] [t]
WHERE
	[t].[ID] = 2

