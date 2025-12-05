-- Sybase.Managed Sybase
DECLARE @Value Integer -- Int32
SET     @Value = 0

INSERT INTO [KeepIdentityTest]
(
	[Value]
)
VALUES
(
	@Value
)

SELECT @@IDENTITY

-- Sybase.Managed Sybase
DECLARE @Value Integer -- Int32
SET     @Value = 200

INSERT INTO [KeepIdentityTest]
(
	[Value]
)
VALUES
(
	@Value
)

-- Sybase.Managed Sybase
DECLARE @Value Integer -- Int32
SET     @Value = 300

INSERT INTO [KeepIdentityTest]
(
	[Value]
)
VALUES
(
	@Value
)

-- Sybase.Managed Sybase
DECLARE @lastId Integer -- Int32
SET     @lastId = 1

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[KeepIdentityTest] [t1]
WHERE
	[t1].[ID] > @lastId
ORDER BY
	[t1].[ID]

-- Sybase.Managed Sybase
DECLARE @lastId Integer -- Int32
SET     @lastId = 1

DELETE FROM [KeepIdentityTest]
FROM
	[KeepIdentityTest] [t1]
WHERE
	[t1].[ID] >= @lastId

