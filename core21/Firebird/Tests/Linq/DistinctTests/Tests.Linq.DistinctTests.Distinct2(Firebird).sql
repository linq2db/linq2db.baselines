﻿BeforeExecute
-- Firebird

SELECT DISTINCT
	Coalesce("p"."Value1", Mod("p"."ParentID", 2))
FROM
	"Parent" "p"

