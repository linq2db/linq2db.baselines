﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @Data NVarChar(50) -- String
SET     @Data = N'***III***'
DECLARE @ID Int -- Int32
SET     @ID = 3

UPDATE
	[TrimTestTable]
SET
	[Data] = @Data
WHERE
	[TrimTestTable].[ID] = @ID

BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @Data NVarChar(50) -- String
SET     @Data = N'***OOO***'

UPDATE
	[TrimTestTable]
SET
	[Data] = @Data
WHERE
	[TrimTestTable].[Data] = N'***XXX***'

BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @Data NVarChar(50) -- String
SET     @Data = N'***SSS***'
DECLARE @p NVarChar(50) -- String
SET     @p = N'***HHH***'

UPDATE
	[TrimTestTable]
SET
	[Data] = @Data
WHERE
	[TrimTestTable].[Data] = @p

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

