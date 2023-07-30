BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[VariantTable]', N'U') IS NOT NULL)
	DROP TABLE [VariantTable]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[VariantTable]', N'U') IS NULL)
	CREATE TABLE [VariantTable]
	(
		[Id]    Int         NOT NULL,
		[Value] Sql_Variant     NULL
	)

BeforeExecute
INSERT BULK [VariantTable](Id, Value)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[VariantTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[VariantTable]', N'U') IS NOT NULL)
	DROP TABLE [VariantTable]

