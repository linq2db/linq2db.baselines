﻿BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Length Integer -- Int32
SET     @Length = 2

SELECT
	("p5"."PersonID" * CAST(@Length AS Int)) / 2,
	"p5"."FirstName"
FROM
	"Person" "p5"

