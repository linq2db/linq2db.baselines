-- SqlServer.SA.MS SqlServer.2019
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

-- SqlServer.SA.MS SqlServer.2019
DECLARE @newValue Int -- Int32
SET     @newValue = 123

UPDATE
	[TableWithIdentity]
SET
	[Value] = @newValue

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

