﻿BeforeExecute
--  Firebird.4 Firebird4

SELECT DISTINCT
	Coalesce("p"."Value1", Mod("p"."ParentID", 2))
FROM
	"Parent" "p"

