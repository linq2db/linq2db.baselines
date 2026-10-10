-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value DateTime
SET     @Value = CAST('2026-06-01T10:00:00.0000000' AS DATETIME2)
DECLARE @Day Date
SET     @Day = CAST('2026-06-01T00:00:00.0000000' AS DATETIME2)
DECLARE @Wide DateTime2
SET     @Wide = CAST('2026-06-01T10:00:00.0000000' AS DATETIME2)

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

-- SqlServer.2008
SELECT TOP (2)
	DateAdd(millisecond, 226, [r].[Value])
FROM
	[CoarseDateShapesRow] [r]

-- SqlServer.2008
SELECT TOP (2)
	DateAdd(millisecond, 226, [r].[Value])
FROM
	[CoarseDateShapesRow] [r]

