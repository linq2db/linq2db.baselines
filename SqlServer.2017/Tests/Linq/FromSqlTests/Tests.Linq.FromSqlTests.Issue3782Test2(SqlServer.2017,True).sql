BeforeExecute
-- SqlServer.2017
DECLARE @p Variant -- Object
SET     @p = LinqToDB.SqlQuery.SqlAliasPlaceholder

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			(
				SELECT IIF(EXISTS(SELECT * FROM [INFORMATION_SCHEMA].[TABLES] [x] WHERE [x].[TABLE_NAME] = N'Person'),1,0) @p
			) [t1]
	), 1, 0)

