BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = :p

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 3
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = :p OR x."ParentID" = :p_1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = :p OR x."ParentID" = :p_1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

