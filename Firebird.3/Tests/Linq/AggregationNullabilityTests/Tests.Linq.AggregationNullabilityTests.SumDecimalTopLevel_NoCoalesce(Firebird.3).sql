-- Firebird.3 Firebird3

SELECT
	SUM("i"."DecimalValue")
FROM
	"Inner" "i"
WHERE
	"i"."Group" = 1

