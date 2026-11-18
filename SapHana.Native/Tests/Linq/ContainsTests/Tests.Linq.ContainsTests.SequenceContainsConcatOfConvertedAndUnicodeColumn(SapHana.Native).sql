-- SapHana.Native SapHana
SELECT
	Coalesce("t"."Code", '') || Coalesce("t"."Title", '')
FROM
	"PrefixedCodeWithTitle" "t"
LIMIT 2

-- SapHana.Native SapHana
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:AT'

SELECT
	CASE
		WHEN :"Code" IN (
			SELECT
				Coalesce("t"."Code", '') || Coalesce("t"."Title", '')
			FROM
				"PrefixedCodeWithTitle" "t"
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

