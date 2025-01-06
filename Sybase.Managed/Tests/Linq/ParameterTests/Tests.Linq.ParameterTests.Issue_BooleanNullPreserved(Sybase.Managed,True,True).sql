BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestBool') IS NOT NULL)
	DROP TABLE [TestBool]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestBool') IS NULL)
	EXECUTE('
		CREATE TABLE [TestBool]
		(
			[Id]    Int NOT NULL,
			[Value] Bit NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TestBool]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	0
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

BeforeExecute
-- Sybase.Managed Sybase

UPDATE
	[TestBool]
SET
	[Id] = 1,
	[Value] = CASE
		WHEN [TestBool].[Value] = 0 THEN 1
		ELSE 0
	END

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

BeforeExecute
-- Sybase.Managed Sybase

UPDATE
	[TestBool]
SET
	[Id] = 1,
	[Value] = 0

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestBool') IS NOT NULL)
	DROP TABLE [TestBool]

