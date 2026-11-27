-- Firebird.5 Firebird4
SELECT
	COUNT(CASE
		WHEN "t"."Status" = 3 THEN 1
		ELSE NULL
	END)
FROM
	"GroupByConstantKeyTable" "t"
WHERE
	"t"."MyOtherId" = 12
FETCH NEXT 1 ROWS ONLY

