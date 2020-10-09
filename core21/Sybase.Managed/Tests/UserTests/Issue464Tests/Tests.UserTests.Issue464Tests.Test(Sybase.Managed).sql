BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [Issue464]
(
	[Id]    Int NOT NULL,
	[Value] Int     NULL
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue464]
(
	[Id],
	[Value]
)
SELECT 1,1 UNION ALL
SELECT 2,2 UNION ALL
SELECT 3,3

BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	[t1].[Id], 
	[t1].[Value]
FROM
	[Issue464] [t1]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [Issue464]

