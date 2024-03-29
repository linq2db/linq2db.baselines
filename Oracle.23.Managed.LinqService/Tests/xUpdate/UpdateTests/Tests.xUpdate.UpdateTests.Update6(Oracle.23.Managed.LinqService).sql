﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @ParentID Int32
SET     @ParentID = 1001

INSERT INTO "Parent"
(
	"Value1",
	"ParentID"
)
VALUES
(
	:Value1,
	:ParentID
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = :id AND p."Value1" = 1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1001

UPDATE
	"Parent"
SET
	"Parent"."Value1" = 2
WHERE
	"Parent"."ParentID" = :id

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = :id AND p."Value1" = 2

