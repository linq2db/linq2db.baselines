-- SqlServer.CS.MS SqlServer.2025
DECLARE @Code VarChar(20) -- AnsiString
SET     @Code = N'x:A'

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[PrefixedCode] [t]
		WHERE
			@Code = CAST([t].[Code] AS NVarChar(40))
	), 1, 0)

