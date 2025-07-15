BeforeExecute
-- SqlServer.SA SqlServer.2019
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

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

