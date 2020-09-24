BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [SampleClass]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	DateAdd(day, 1, GetDate()),
	DateAdd(day, 2, GetDate())

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [SampleClass]

