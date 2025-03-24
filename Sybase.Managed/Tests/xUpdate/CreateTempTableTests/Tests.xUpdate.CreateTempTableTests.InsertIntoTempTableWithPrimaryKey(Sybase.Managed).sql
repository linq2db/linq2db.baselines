﻿BeforeExecute
--  Sybase.Managed Sybase

CREATE TABLE #TableWithPrimaryKey2
(
	[Key] Int NOT NULL,

	CONSTRAINT [PK_TableWithPrimaryKey2] PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
--  Sybase.Managed Sybase

INSERT INTO #TableWithPrimaryKey2
(
	[Key]
)
SELECT 1

BeforeExecute
--  Sybase.Managed Sybase

IF (OBJECT_ID(N'#TableWithPrimaryKey2') IS NOT NULL)
	DROP TABLE #TableWithPrimaryKey2

