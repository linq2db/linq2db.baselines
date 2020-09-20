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

INSERT INTO [KeepIdentityTest]
(
	[ID],
	[Value]
)
SELECT 482,200 UNION ALL
SELECT 492,300

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @lastId Integer -- Int32
SET     @lastId = 472

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
SET     @lastId = 472

DELETE FROM [KeepIdentityTest]
FROM
	[KeepIdentityTest] [t1]
WHERE
	[t1].[ID] >= @lastId

