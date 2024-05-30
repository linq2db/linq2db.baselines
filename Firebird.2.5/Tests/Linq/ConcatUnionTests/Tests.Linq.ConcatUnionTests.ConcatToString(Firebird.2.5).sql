﻿BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 10
DECLARE @pattern VarChar(3) -- String
SET     @pattern = '%1%'

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
			"p_1"."PersonID" LIKE @pattern ESCAPE '~'
	) "t1"

