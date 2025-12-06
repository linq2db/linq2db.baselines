-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	123
)

-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

