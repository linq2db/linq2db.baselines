﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Value5 Int -- Int32
SET     @Value5 = 11
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value5] = @Value5
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[Value5]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Value5 Int -- Int32
SET     @Value5 = 12
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value5] = @Value5
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[Value5]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

