﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
OFFSET :skip 

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 4

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
OFFSET :skip 

