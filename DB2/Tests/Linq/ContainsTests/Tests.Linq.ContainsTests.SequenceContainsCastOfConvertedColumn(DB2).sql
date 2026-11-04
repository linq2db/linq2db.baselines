-- DB2 DB2.LUW DB2LUW
DECLARE @Code VarChar(3) -- String
SET     @Code = 'x:A'

SELECT
	CAST(EXISTS(
		SELECT
			*
		FROM
			"PrefixedCode" "t"
		WHERE
			CAST(@Code AS VarChar(3)) = Char("t"."Code", 40)
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

