BeforeExecute
-- SqlCe

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	123
)

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[TableWithIdentity] [t1]

