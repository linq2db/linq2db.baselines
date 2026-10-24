-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value DateTime
SET     @Value = '2026-06-01 10:00:00.000'
DECLARE @Day Date
SET     @Day = '2026-06-01 00:00:00.000'
DECLARE @Wide DateTime
SET     @Wide = '1969-01-01 00:00:00.500'

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

-- Sybase.Managed Sybase
SELECT TOP 2
	DatePart(millisecond, [r].[Wide])
FROM
	[CoarseDateShapesRow] [r]

-- Sybase.Managed Sybase
SELECT TOP 2
	DatePart(millisecond, [r].[Wide])
FROM
	[CoarseDateShapesRow] [r]

