﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @skip_2 Integer -- Int32
SET     @skip_2 = 5
DECLARE @skip_3 Integer -- Int32
SET     @skip_3 = 2

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID" DESC
LIMIT :skip_2 OFFSET :skip_3 

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @skip_3 Integer -- Int32
SET     @skip_3 = 5
DECLARE @skip_4 Integer -- Int32
SET     @skip_4 = 2

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID" DESC
LIMIT :skip_3 OFFSET :skip_4 

