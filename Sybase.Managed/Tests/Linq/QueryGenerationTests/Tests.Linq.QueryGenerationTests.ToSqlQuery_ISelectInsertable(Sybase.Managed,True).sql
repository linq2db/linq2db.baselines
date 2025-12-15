-- Sybase.Managed Sybase
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentitySrc]
(
	[Value]
)
VALUES
(
	@Value
)

-- Sybase.Managed Sybase

INSERT INTO [TableWithIdentity]
(
	[Value]
)
SELECT
	[t1].[Value] + 123
FROM
	[TableWithIdentitySrc] [t1]

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

