BeforeExecute
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

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @lastId Integer -- Int32
SET     @lastId = 1

DELETE FROM [KeepIdentityTest]
FROM
	[KeepIdentityTest] [t1]
WHERE
	[t1].[ID] >= @lastId

