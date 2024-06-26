﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 100500
DECLARE @Value1 Int32
SET     @Value1 = NULL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:ParentID,
	:Value1
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 100500

SELECT
	p."ParentID"
FROM
	"Parent" p
WHERE
	p."ParentID" = :id AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 100500
DECLARE @id Int32
SET     @id = 100500

UPDATE
	"Parent" p
SET
	"Value1" = :ParentID
WHERE
	p."ParentID" = :id AND (
		SELECT
			COUNT(*)
		FROM
			"Parent" p_1
		WHERE
			p_1."ParentID" = :id
	) > 0

