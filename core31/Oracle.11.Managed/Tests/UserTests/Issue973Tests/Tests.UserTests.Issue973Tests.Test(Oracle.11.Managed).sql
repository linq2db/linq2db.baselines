BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @values_1 Int32
SET     @values_1 = 1
DECLARE @values_2 Int32
SET     @values_2 = 2
DECLARE @values_3 Int32
SET     @values_3 = 3
DECLARE @param Int32
SET     @param = 4

SELECT
	o."ParentID",
	o."Value1"
FROM
	"Parent" o
WHERE
	(o."ParentID" IN (:values_1, :values_2, :values_3) OR o."ParentID" = :param)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @param Int32
SET     @param = 4

SELECT
	o."ParentID",
	o."Value1"
FROM
	"Parent" o
WHERE
	((o."ParentID" IN (1, 2, 3) OR o."ParentID" IS NULL) OR o."ParentID" = :param)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @values_1 Int32
SET     @values_1 = 4
DECLARE @values_2 Int32
SET     @values_2 = 5
DECLARE @values_3 Int32
SET     @values_3 = 6
DECLARE @param Int32
SET     @param = 4

SELECT
	o."ParentID",
	o."Value1"
FROM
	"Parent" o
WHERE
	(o."ParentID" IN (:values_1, :values_2, :values_3) OR o."ParentID" = :param)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @param Int32
SET     @param = 4

SELECT
	o."ParentID",
	o."Value1"
FROM
	"Parent" o
WHERE
	((o."ParentID" IN (4, 5, 6) OR o."ParentID" IS NULL) OR o."ParentID" = :param)

