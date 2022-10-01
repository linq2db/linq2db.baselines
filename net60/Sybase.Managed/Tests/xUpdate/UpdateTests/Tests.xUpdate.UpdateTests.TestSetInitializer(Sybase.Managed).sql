BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UpdateSetTest') IS NOT NULL)
	DROP TABLE [UpdateSetTest]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UpdateSetTest') IS NULL)
	EXECUTE('
		CREATE TABLE [UpdateSetTest]
		(
			[Id]     Int         NOT NULL,
			[Value1] VARCHAR(36) NOT NULL,
			[Value2] Int         NOT NULL,
			[Value3] Int         NOT NULL,
			[Value4] VARCHAR(36)     NULL,
			[Value5] Int             NULL,
			[Value6] Int             NULL,

			CONSTRAINT [PK_UpdateSetTest] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [UpdateSetTest]
(
	[Id],
	[Value1],
	[Value2],
	[Value3],
	[Value4],
	[Value5],
	[Value6]
)
SELECT 1,'bd3973a5-4323-4dd8-9f4f-df9f93e2a627',10,6,NULL,NULL,NULL

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Guid6 Char(36) -- AnsiStringFixedLength
SET     @Guid6 = '66aa9df9-260f-4a2b-ac50-9ca8ce7ad725'
DECLARE @Value6 Integer -- Int32
SET     @Value6 = 8

UPDATE
	[UpdateSetTest]
SET
	[x].[Value2] = 20,
	[x].[Value5] = [x].[Value2] * 5,
	[x].[Value1] = @Guid6,
	[x].[Value3] = 8,
	[x].[Value6] = @Value6
FROM
	[UpdateSetTest] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[x].[Id],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3],
	[x].[Value4],
	[x].[Value5],
	[x].[Value6]
FROM
	[UpdateSetTest] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UpdateSetTest') IS NOT NULL)
	DROP TABLE [UpdateSetTest]

