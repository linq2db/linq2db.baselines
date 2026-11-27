-- DB2 DB2.LUW DB2LUW
SELECT DISTINCT
	(
		SELECT
			"cc"."Name"
		FROM
			"LookupCity" "cc"
		WHERE
			"cc"."Code" = "pe"."Code" OR "cc"."Code" IS NULL AND "pe"."Code" IS NULL
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"LookupPerson" "pe"

