-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	@Value
)

-- SqlCe

UPDATE
	[TableWithIdentity]
SET
	[Value] = 123

-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[TableWithIdentity] [t1]

