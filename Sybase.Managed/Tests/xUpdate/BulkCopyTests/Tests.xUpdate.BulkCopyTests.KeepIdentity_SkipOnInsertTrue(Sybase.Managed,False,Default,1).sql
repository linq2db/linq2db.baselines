﻿BeforeExecute
--  Sybase.Managed Sybase

sp_chgattribute AllTypes, 'identity_burn_max', 0, '2'

BeforeExecute
--  Sybase.Managed Sybase

sp_chgattribute KeepIdentityTest, 'identity_burn_max', 0, '0'

BeforeExecute
--  Sybase.Managed Sybase
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
--  Sybase.Managed Sybase (asynchronously)

INSERT INTO [KeepIdentityTest]
(
	[Value]
)
SELECT 200 UNION ALL
SELECT 300

BeforeExecute
--  Sybase.Managed Sybase
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

BeforeExecute
--  Sybase.Managed Sybase
DECLARE @lastId Integer -- Int32
SET     @lastId = 1

DELETE FROM [KeepIdentityTest]
FROM
	[KeepIdentityTest] [t1]
WHERE
	[t1].[ID] >= @lastId

