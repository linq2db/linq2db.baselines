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
	"Value1" = 1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					p."ParentID",
					p."Value1"
				FROM
					"Parent" p
				WHERE
					p."ParentID" >= 1000 AND ROWNUM <= :take
			) t1
		WHERE
			"Parent"."ParentID" = t1."ParentID" AND ("Parent"."Value1" = t1."Value1" OR "Parent"."Value1" IS NULL AND t1."Value1" IS NULL)
	)

