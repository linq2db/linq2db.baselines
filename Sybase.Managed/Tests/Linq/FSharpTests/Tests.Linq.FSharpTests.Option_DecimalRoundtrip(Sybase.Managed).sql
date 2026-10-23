-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Decimal(4, 2)
SET     @Value = 12.34

INSERT INTO [OptionDecimalTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value Decimal
SET     @Value = NULL

INSERT INTO [OptionDecimalTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- Sybase.Managed Sybase
SELECT TOP 2
	[r].[Id],
	[r].[Value]
FROM
	[OptionDecimalTable] [r]
WHERE
	[r].[Id] = 1

-- Sybase.Managed Sybase
SELECT TOP 2
	[r].[Id],
	[r].[Value]
FROM
	[OptionDecimalTable] [r]
WHERE
	[r].[Id] = 2

