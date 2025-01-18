BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"InstanceClass" "t"
WHERE
	"t"."Id" || "t"."Value" = "t"."Id" || CAST("t"."Value" AS VarChar(11) CHARACTER SET UNICODE_FSS)

