-- SqlServer.2025 SqlServer.2022
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

-- SqlServer.2025 SqlServer.2022
DECLARE @newValue Int -- Int32
SET     @newValue = 123

UPDATE
	[TableWithIdentity]
SET
	[Value] = @newValue

-- SqlServer.2025 SqlServer.2022

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

