BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_temp') IS NOT NULL)
	DROP TABLE [test_temp]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_temp') IS NULL)
	EXECUTE('
		CREATE TABLE [test_temp]
		(
			[ID]     Int     IDENTITY NOT NULL,
			[Field1] Decimal          NOT NULL,

			CONSTRAINT [PK_test_temp] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

TRUNCATE TABLE [test_temp]

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[test_temp] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- Sybase.Managed Sybase

TRUNCATE TABLE [test_temp]

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[test_temp] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_temp') IS NOT NULL)
	DROP TABLE [test_temp]

