﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @defValue Integer -- Int32
SET     @defValue = 10

SELECT
	Coalesce(Min(gr."ParentID"), :defValue)
FROM
	"Parent" gr

