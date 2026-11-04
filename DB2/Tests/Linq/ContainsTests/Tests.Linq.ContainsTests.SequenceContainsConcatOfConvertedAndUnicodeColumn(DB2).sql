-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("t"."Code", '') || Coalesce("t"."Title", '')
FROM
	"PrefixedCodeWithTitle" "t"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @Code VarChar(4) -- String
SET     @Code = 'x:AT'

SELECT
	CASE
		WHEN CAST(@Code AS VarChar(4)) IN (
			SELECT
				Coalesce("t"."Code", '') || Coalesce("t"."Title", '')
			FROM
				"PrefixedCodeWithTitle" "t"
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

