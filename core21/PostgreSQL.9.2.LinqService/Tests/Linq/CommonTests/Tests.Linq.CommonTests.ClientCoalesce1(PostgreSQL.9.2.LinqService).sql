﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @p1 Integer -- Int32
SET     @p1 = 100

SELECT
	Coalesce(p."Value1", :p1)
FROM
	"Parent" p

