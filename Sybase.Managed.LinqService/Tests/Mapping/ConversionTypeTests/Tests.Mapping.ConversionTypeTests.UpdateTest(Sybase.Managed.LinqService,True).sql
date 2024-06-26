﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TrimTestTable') IS NOT NULL)
	DROP TABLE [TrimTestTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TrimTestTable') IS NULL)
	EXECUTE('
		CREATE TABLE [TrimTestTable]
		(
			[ID]   Int          NOT NULL,
			[Data] NVarChar(50)     NULL,

			CONSTRAINT [PK_TrimTestTable] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	1,
	'***XXX***'
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	2,
	'***HHH***'
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	3,
	'***VVV***'
)

BeforeExecute
-- Sybase.Managed Sybase

UPDATE
	[TrimTestTable]
SET
	[Data] = '***III***'
WHERE
	[TrimTestTable].[ID] = 3

BeforeExecute
-- Sybase.Managed Sybase

UPDATE
	[TrimTestTable]
SET
	[Data] = '***OOO***'
WHERE
	[TrimTestTable].[Data] = '***XXX***'

BeforeExecute
-- Sybase.Managed Sybase

UPDATE
	[TrimTestTable]
SET
	[Data] = '***SSS***'
WHERE
	[TrimTestTable].[Data] = '***HHH***'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TrimTestTable') IS NOT NULL)
	DROP TABLE [TrimTestTable]

