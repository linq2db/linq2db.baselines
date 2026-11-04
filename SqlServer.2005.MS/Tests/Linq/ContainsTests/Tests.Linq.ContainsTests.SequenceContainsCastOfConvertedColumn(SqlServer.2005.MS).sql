-- SqlServer.2005.MS SqlServer.2005
DECLARE @Code VarChar(20) -- AnsiString
SET     @Code = N'x:A'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[PrefixedCode] [t]
			WHERE
				@Code = CAST([t].[Code] AS NVarChar(40))
		)
			THEN 1
		ELSE 0
	END

