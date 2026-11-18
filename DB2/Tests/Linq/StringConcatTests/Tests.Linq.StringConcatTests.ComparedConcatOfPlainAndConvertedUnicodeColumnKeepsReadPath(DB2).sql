-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Plain" || "r"."Conv"
FROM
	"PlainAndConvertedUnicodeRow" "r"
ORDER BY
	"r"."Id"
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" "r"
WHERE
	("r"."Plain" || "r"."Conv") = @read

-- DB2 DB2.LUW DB2LUW
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" "r"
WHERE
	("r"."Plain" || "r"."Conv") <> @read

-- DB2 DB2.LUW DB2LUW
SELECT
	CASE
		WHEN 'A-x:n1' IN (
			SELECT
				"r"."Plain" || "r"."Conv"
			FROM
				"PlainAndConvertedUnicodeRow" "r"
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" "r"
WHERE
	("r"."Plain" || "r"."Conv") IN ('A-x:n1')

