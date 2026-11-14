-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Value  -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentitySrc]
(
	[Value]
)
VALUES
(
	@Value
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
INSERT INTO [TableWithIdentity]
(
	[Id],
	[Value]
)
SELECT
	345,
	[t1].[Value] + 123
FROM
	[TableWithIdentitySrc] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

