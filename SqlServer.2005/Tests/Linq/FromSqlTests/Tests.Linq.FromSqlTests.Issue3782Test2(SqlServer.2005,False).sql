BeforeExecute
-- SqlServer.2005
DECLARE @p Variant -- Object
SET     @p = LinqToDB.SqlQuery.SqlAliasPlaceholder

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				(
					SELECT IIF(EXISTS(SELECT * FROM [INFORMATION_SCHEMA].[TABLES] [x] WHERE [x].[TABLE_NAME] = N'Person'),1,0) @p
				) [t1]
		)
			THEN 1
		ELSE 0
	END

