BeforeExecute
-- Firebird.4 Firebird4

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

