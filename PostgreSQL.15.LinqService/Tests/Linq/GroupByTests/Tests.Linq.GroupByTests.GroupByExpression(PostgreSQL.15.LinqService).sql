﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @defValue Integer -- Int32
SET     @defValue = 10

SELECT
	Coalesce(Min(t1."ParentID"), :defValue)
FROM
	"Parent" t1

