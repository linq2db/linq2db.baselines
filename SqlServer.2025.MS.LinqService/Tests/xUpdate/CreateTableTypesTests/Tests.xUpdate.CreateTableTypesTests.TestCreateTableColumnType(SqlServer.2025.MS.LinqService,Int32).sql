﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int32 Int -- Int32
SET     @Int32 = 0

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int32]
)
VALUES
(
	@Id,
	@Int32
)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int32 Int -- Int32
SET     @Int32 = 1

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int32]
)
VALUES
(
	@Id,
	@Int32
)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Int32]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

