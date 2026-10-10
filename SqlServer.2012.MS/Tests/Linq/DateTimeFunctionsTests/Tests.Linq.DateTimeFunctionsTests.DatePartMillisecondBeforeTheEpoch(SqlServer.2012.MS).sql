-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value DateTime
SET     @Value = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7)
DECLARE @Day Date
SET     @Day = DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7)
DECLARE @Wide DateTime2
SET     @Wide = DATETIME2FROMPARTS(1969, 1, 1, 0, 0, 0, 5000000, 7)

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

-- SqlServer.2012.MS SqlServer.2012
SELECT TOP (2)
	DatePart(millisecond, [r].[Wide])
FROM
	[CoarseDateShapesRow] [r]

-- SqlServer.2012.MS SqlServer.2012
SELECT TOP (2)
	DatePart(millisecond, [r].[Wide])
FROM
	[CoarseDateShapesRow] [r]

