﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

UPDATE
	[TrimTestTable]
SET
	[Data] = N'***III***'
WHERE
	[TrimTestTable].[ID] = 3

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

UPDATE
	[TrimTestTable]
SET
	[Data] = N'***OOO***'
WHERE
	[TrimTestTable].[Data] = N'***XXX***'

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

UPDATE
	[TrimTestTable]
SET
	[Data] = N'***SSS***'
WHERE
	[TrimTestTable].[Data] = N'***HHH***'

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

