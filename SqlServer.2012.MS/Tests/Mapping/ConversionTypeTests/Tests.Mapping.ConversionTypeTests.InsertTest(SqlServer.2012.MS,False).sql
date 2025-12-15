-- SqlServer.2012.MS SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Data NVarChar(50) -- String
SET     @Data = N'***OOO***'

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	@ID,
	@Data
)

-- SqlServer.2012.MS SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @Data NVarChar(50) -- String
SET     @Data = N'***HHH***'

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	@ID,
	@Data
)

-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	3,
	N'***VVV***'
)

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

