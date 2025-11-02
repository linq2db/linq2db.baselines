-- SqlServer.2016

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	123
)

-- SqlServer.2016

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

