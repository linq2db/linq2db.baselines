BeforeExecute
-- Firebird4 Firebird

SELECT
	'I-' || Cast("x"."PersonID" as VarChar(11) CHARACTER SET UNICODE_FSS),
	"x"."FirstName"
FROM
	"Person" "x"
UNION ALL
SELECT
	NULL,
	'QUASI-' || "x_1"."FirstName"
FROM
	"Person" "x_1"

