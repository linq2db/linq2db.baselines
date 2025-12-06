-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	123
)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

