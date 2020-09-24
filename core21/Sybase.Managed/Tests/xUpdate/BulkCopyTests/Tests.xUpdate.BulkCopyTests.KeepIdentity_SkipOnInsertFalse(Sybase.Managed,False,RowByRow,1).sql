BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 0

INSERT INTO [KeepIdentityTest]
(
	[Value]
)
VALUES
(
	@Value_1
)

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 200

INSERT INTO [KeepIdentityTest]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 300

INSERT INTO [KeepIdentityTest]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @lastId Integer -- Int32
SET     @lastId = 241

SELECT
	[_].[ID],
	[_].[Value]
FROM
	[KeepIdentityTest] [_]
WHERE
	[_].[ID] > @lastId
ORDER BY
	[_].[ID]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @lastId Integer -- Int32
SET     @lastId = 241

DELETE FROM [KeepIdentityTest]
FROM
	[KeepIdentityTest] [t1]
WHERE
	[t1].[ID] >= @lastId

