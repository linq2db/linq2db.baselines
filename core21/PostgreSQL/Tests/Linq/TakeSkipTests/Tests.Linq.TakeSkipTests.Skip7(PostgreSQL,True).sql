﻿BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
OFFSET :n 

