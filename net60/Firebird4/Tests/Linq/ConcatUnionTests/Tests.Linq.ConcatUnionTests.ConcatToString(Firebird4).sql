BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 10
DECLARE @pattern_1 VarChar(3) -- String
SET     @pattern_1 = '%1%'

SELECT FIRST @take
	"t1"."FirstName"
FROM
	(
		SELECT
			"p"."FirstName"
		FROM
			"Person" "p"
		WHERE
			"p"."FirstName" LIKE '1'
		UNION ALL
		SELECT
			"p_1"."FirstName"
		FROM
			"Person" "p_1"
		WHERE
			Cast("p_1"."PersonID" as VarChar(11) CHARACTER SET UNICODE_FSS) LIKE @pattern_1 ESCAPE '~'
	) "t1"

