-- Firebird.5 Firebird4

SELECT
	SUM("i"."DecimalValue")
FROM
	"Inner" "i"
WHERE
	"i"."Group" = 1

