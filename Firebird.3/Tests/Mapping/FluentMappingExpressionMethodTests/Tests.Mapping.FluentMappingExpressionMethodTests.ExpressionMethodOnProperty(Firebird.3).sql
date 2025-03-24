BeforeExecute
--  Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"InstanceClass" "t"
WHERE
	"t"."Id" || "t"."Value" = "t"."Id" || CAST("t"."Value" AS VarChar(11) CHARACTER SET UNICODE_FSS)

