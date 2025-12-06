-- SqlServer.2014

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	123
)

-- SqlServer.2014

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

