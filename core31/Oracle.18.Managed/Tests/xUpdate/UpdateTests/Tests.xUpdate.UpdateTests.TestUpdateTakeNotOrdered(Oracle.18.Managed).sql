﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" >= 1000

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1000
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1001
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1002
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1003
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1004
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1005
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1006
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1007
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1008
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1009
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 5

UPDATE
	"Parent"
SET
	"Parent"."Value1" = 1
WHERE
	"Parent"."ParentID" > 1000 AND ROWNUM <= :take

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" >= 1000

