﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	lw_Parent."ParentID",
	lw_Parent."Value1",
	lw_Parent."ParentID_1",
	lw_Parent."ChildID",
	detail_1."ParentID",
	detail_1."ChildID"
FROM
	(
		SELECT DISTINCT
			a_Parent."ParentID" as "c1",
			key_data_result."ParentID",
			key_data_result."Value1",
			detail."ParentID" as "ParentID_1",
			detail."ChildID"
		FROM
			(
				SELECT DISTINCT
					t1."ParentID",
					t1."Value1"
				FROM
					(
						SELECT
							p."ParentID",
							p."Value1"
						FROM
							"Parent" p
						WHERE
							p."ParentID" < 2 AND ROWNUM <= :take
					) t1
			) key_data_result
				INNER JOIN "Child" detail ON key_data_result."ParentID" = detail."ParentID"
				LEFT JOIN "Parent" a_Parent ON detail."ParentID" = a_Parent."ParentID"
	) lw_Parent
		INNER JOIN "Child" detail_1 ON lw_Parent."c1" = detail_1."ParentID"

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	key_data_result."ParentID",
	key_data_result."Value1",
	detail."ParentID",
	detail."ChildID",
	a_Parent."ParentID",
	a_Parent."Value1"
FROM
	(
		SELECT DISTINCT
			t1."ParentID",
			t1."Value1"
		FROM
			(
				SELECT
					p."ParentID",
					p."Value1"
				FROM
					"Parent" p
				WHERE
					p."ParentID" < 2 AND ROWNUM <= :take
			) t1
	) key_data_result
		INNER JOIN "Child" detail ON key_data_result."ParentID" = detail."ParentID"
		LEFT JOIN "Parent" a_Parent ON detail."ParentID" = a_Parent."ParentID"

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" < 2 AND ROWNUM <= :take

