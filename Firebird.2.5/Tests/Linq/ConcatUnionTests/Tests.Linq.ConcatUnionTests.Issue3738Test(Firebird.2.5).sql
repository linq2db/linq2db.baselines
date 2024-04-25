BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	'I-' || CAST("x"."PersonID" AS VarChar(11) CHARACTER SET UNICODE_FSS),
	"x"."FirstName"
FROM
	"Person" "x"
UNION ALL
SELECT
	NULL,
	'QUASI-' || "x_1"."FirstName"
FROM
	"Person" "x_1"

