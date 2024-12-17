BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [sample_table_temp]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[sample_table_temp]', N'U') IS NULL)
	CREATE TABLE [sample_table_temp]
	(
		[id]    Int NOT NULL,
		[value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value Int -- Int32
SET     @Value = 2

INSERT INTO [sample_table_temp]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	'[database].[schema].[table_name]',
	'[database].[schema].[table_name]',
	'[table_name]',
	'table_name',
	'[schema].[table_name]',
	'[database]..[table_name]'
FROM
	[sample_table_temp] [t]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [sample_table_temp]

