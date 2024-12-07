BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [sample_table_temp]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[sample_table_temp]', N'U') IS NULL)
	CREATE TABLE [sample_table_temp]
	(
		[id]    Int NOT NULL,
		[value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022
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
-- SqlServer.2022

SELECT TOP (1)
	N'[database].[schema].[table_name]',
	N'[database].[schema].[table_name]',
	N'[table_name]',
	N'table_name',
	N'[schema].[table_name]',
	N'[database]..[table_name]'
FROM
	[sample_table_temp] [t]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [sample_table_temp]

