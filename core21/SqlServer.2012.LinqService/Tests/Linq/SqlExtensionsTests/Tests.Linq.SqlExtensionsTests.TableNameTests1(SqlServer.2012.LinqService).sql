BeforeExecute
-- SqlServer.2012

CREATE TABLE [sample_table_temp]
(
	[id]    Int NOT NULL,
	[value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2012

INSERT INTO [sample_table_temp]
(
	[id],
	[value]
)
VALUES
(1,2)

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

DROP TABLE [sample_table_temp]

