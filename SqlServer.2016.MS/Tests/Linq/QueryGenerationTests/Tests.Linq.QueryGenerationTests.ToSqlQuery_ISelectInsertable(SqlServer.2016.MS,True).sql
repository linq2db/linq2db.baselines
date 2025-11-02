-- SqlServer.2016.MS SqlServer.2016
DECLARE @Value Int -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentitySrc]
(
	[Value]
)
VALUES
(
	@Value
)

-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [TableWithIdentity]
(
	[Value]
)
SELECT
	[t1].[Value] + 123
FROM
	[TableWithIdentitySrc] [t1]

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

