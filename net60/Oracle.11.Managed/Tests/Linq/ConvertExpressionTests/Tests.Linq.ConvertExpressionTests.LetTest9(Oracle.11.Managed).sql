﻿BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 10

SELECT
	key_data_result."ParentID",
	key_data_result."Value1",
	c_1."ParentID",
	c_1."ChildID"
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
					ROWNUM <= :take
			) t1
	) key_data_result
		INNER JOIN "Child" c_1 ON c_1."ParentID" = key_data_result."ParentID"
ORDER BY
	c_1."ChildID"

BeforeExecute
RollbackTransaction
BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 10

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	ROWNUM <= :take

