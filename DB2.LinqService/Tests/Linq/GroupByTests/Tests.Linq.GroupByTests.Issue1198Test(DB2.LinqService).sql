BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	COUNT(CASE
		WHEN "t"."Status" = 3 THEN 1
		ELSE NULL
	END)
FROM
	"Issue1192Table" "t"
WHERE
	"t"."MyOtherId" = 12
FETCH NEXT 1 ROWS ONLY

