﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @defValue Integer -- Int32
SET     @defValue = 10

SELECT
	Coalesce(Min(t1."ParentID"), :defValue)
FROM
	"Parent" t1

