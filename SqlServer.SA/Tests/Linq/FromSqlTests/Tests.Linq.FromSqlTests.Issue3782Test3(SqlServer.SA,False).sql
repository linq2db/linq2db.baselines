-- SqlServer.SA SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'Person'

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			(
				SELECT IIF(EXISTS(SELECT * FROM [INFORMATION_SCHEMA].[TABLES] [x] WHERE [x].[TABLE_NAME] = @p),1,0) ttt
			) [t1]([value])
	), 1, 0)

