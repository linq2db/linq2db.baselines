-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value DateTime
SET     @Value = CAST('2026-06-01T10:00:00.000' AS DATETIME)
DECLARE @Day DateTime
SET     @Day = CAST('2026-06-01T00:00:00.000' AS DATETIME)
DECLARE @Wide DateTime
SET     @Wide = CAST('1969-01-01T00:00:00.500' AS DATETIME)

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

-- SqlServer.2005
SELECT TOP (2)
	DatePart(millisecond, [r].[Wide])
FROM
	[CoarseDateShapesRow] [r]

-- SqlServer.2005
SELECT TOP (2)
	DatePart(millisecond, [r].[Wide])
FROM
	[CoarseDateShapesRow] [r]

