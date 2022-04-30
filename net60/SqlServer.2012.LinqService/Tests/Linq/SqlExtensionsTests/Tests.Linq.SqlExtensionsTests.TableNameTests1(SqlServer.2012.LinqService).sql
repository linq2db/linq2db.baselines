BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[sample_table_temp]', N'U') IS NOT NULL)
	DROP TABLE [sample_table_temp]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[sample_table_temp]', N'U') IS NULL)
	CREATE TABLE [sample_table_temp]
	(
		[id]    Int NOT NULL,
		[value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 2

INSERT INTO [sample_table_temp]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	N'[database].[schema].[table_name]',
	N'[table_name]',
	N'table_name',
	N'[schema].[table_name]',
	N'[database]..[table_name]'
FROM
	[sample_table_temp] [t]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[sample_table_temp]', N'U') IS NOT NULL)
	DROP TABLE [sample_table_temp]

