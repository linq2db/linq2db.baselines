-- SapHana.Odbc SapHanaOdbc
DECLARE @Code VarChar(3) -- AnsiString
SET     @Code = 'x:A'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"PrefixedCode" "t"
			WHERE
				? = CAST("t"."Code" AS NVarChar(40))
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

