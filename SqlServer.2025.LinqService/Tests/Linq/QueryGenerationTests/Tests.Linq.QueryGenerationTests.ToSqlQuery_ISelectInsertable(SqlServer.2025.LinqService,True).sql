﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022
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

BeforeExecute
-- SqlServer.2025 SqlServer.2022

INSERT INTO [TableWithIdentity]
(
	[Value]
)
SELECT
	[t1].[Value] + 123
FROM
	[TableWithIdentitySrc] [t1]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

