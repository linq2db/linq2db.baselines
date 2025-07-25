﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Date NVarChar(11) -- String
SET     @Date = N'02-29-2020'

INSERT INTO [Issue4226Table]
(
	[Id],
	[Date]
)
VALUES
(
	@Id,
	@Date
)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT TOP (2)
	[e].[Id],
	[e].[Date]
FROM
	[Issue4226Table] [e]
WHERE
	DatePart(month, [e].[Date]) = DatePart(month, DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7))

