-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value DateTime
SET     @Value = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7)
DECLARE @Day Date
SET     @Day = DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7)
DECLARE @Wide DateTime2
SET     @Wide = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7)

INSERT INTO [CoarseDateShapesRow]
(
	[Id],
	[Value],
	[Day],
	[Wide]
)
VALUES
(
	@Id,
	@Value,
	@Day,
	@Wide
)

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	CAST([r].[Value] AS Date)
FROM
	[CoarseDateShapesRow] [r]
UNION ALL
SELECT
	CAST(DATEFROMPARTS(2026, 6, 1) AS Date)
FROM
	[CoarseDateShapesRow] [r_1]

