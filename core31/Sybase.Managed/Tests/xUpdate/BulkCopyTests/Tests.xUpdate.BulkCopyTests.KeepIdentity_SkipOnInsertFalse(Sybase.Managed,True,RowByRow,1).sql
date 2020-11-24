BeforeExecute
-- Sybase.Managed Sybase

sp_chgattribute AllTypes, 'identity_burn_max', 0, '2'

BeforeExecute
-- Sybase.Managed Sybase

sp_chgattribute KeepIdentityTest, 'identity_burn_max', 0, '0'

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
-- Sybase.Managed Sybase
DECLARE @lastId Integer -- Int32
SET     @lastId = 1

DELETE FROM [KeepIdentityTest]
FROM
	[KeepIdentityTest] [t1]
WHERE
	[t1].[ID] >= @lastId

