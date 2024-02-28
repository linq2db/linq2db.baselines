BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @values Integer -- Int32
SET     @values = 1
DECLARE @values_1 Integer -- Int32
SET     @values_1 = 2
DECLARE @values_2 Integer -- Int32
SET     @values_2 = 3
DECLARE @param Integer -- Int32
SET     @param = 4

SELECT
	o."ParentID",
	o."Value1"
FROM
	"Parent" o
WHERE
	(o."ParentID" IN (:values, :values_1, :values_2) OR o."ParentID" = :param)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 4

SELECT
	o."ParentID",
	o."Value1"
FROM
	"Parent" o
WHERE
	((o."ParentID" IN (1, 2, 3) OR o."ParentID" IS NULL) OR o."ParentID" = :param)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @values Integer -- Int32
SET     @values = 4
DECLARE @values_1 Integer -- Int32
SET     @values_1 = 5
DECLARE @values_2 Integer -- Int32
SET     @values_2 = 6
DECLARE @param Integer -- Int32
SET     @param = 4

SELECT
	o."ParentID",
	o."Value1"
FROM
	"Parent" o
WHERE
	(o."ParentID" IN (:values, :values_1, :values_2) OR o."ParentID" = :param)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 4

SELECT
	o."ParentID",
	o."Value1"
FROM
	"Parent" o
WHERE
	((o."ParentID" IN (4, 5, 6) OR o."ParentID" IS NULL) OR o."ParentID" = :param)

