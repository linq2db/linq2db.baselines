﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @TimeStamp DateTime2
SET     @TimeStamp = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

INSERT INTO [Issue1110TB]
(
	[Id],
	[TimeStamp]
)
VALUES
(
	@Id,
	@TimeStamp
)

