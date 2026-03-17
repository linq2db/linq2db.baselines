-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2
DECLARE @p_2 Integer -- Int32
SET     @p_2 = 3
DECLARE @param Integer -- Int32
SET     @param = 4

SELECT
	o."ParentID",
	o."Value1"
FROM
	"Parent" o
WHERE
	o."ParentID" IN (:p, :p_1, :p_2) OR o."ParentID" = :param

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2
DECLARE @p_2 Integer -- Int32
SET     @p_2 = 3
DECLARE @param Integer -- Int32
SET     @param = 4

SELECT
	o."ParentID",
	o."Value1"
FROM
	"Parent" o
WHERE
	o."ParentID" IN (:p, :p_1, :p_2) OR o."ParentID" = :param

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 4
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 5
DECLARE @p_2 Integer -- Int32
SET     @p_2 = 6
DECLARE @param Integer -- Int32
SET     @param = 4

SELECT
	o."ParentID",
	o."Value1"
FROM
	"Parent" o
WHERE
	o."ParentID" IN (:p, :p_1, :p_2) OR o."ParentID" = :param

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 4
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 5
DECLARE @p_2 Integer -- Int32
SET     @p_2 = 6
DECLARE @param Integer -- Int32
SET     @param = 4

SELECT
	o."ParentID",
	o."Value1"
FROM
	"Parent" o
WHERE
	o."ParentID" IN (:p, :p_1, :p_2) OR o."ParentID" = :param

