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
	'[database].[schema].[table_name]', 
	'[database].[schema].[table_name]', 
	'[table_name]', 
	'table_name', 
	'[schema].[table_name]', 
	'[database]..[table_name]'
FROM
	[sample_table_temp] [t]

BeforeExecute
-- SqlServer.2012

DROP TABLE [sample_table_temp]

