-- SqlServer.2025.MS SqlServer.2025
DECLARE @value Int -- Int32
SET     @value = 123

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	@value
)

-- SqlServer.2025.MS SqlServer.2025

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

