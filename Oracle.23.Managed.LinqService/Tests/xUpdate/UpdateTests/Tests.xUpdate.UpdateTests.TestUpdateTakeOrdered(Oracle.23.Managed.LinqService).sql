BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @take Int32
SET     @take = 5

UPDATE
	"Parent"
SET
	"Value1" = :Value1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					t1."ParentID",
					t1."Value1"
				FROM
					(
						SELECT
							x."ParentID",
							x."Value1"
						FROM
							"Parent" x
						WHERE
							x."ParentID" > 1000
						ORDER BY
							x."ParentID" DESC
					) t1
				WHERE
					ROWNUM <= :take
			) t2
		WHERE
			"Parent"."ParentID" = t2."ParentID" AND ("Parent"."Value1" = t2."Value1" OR "Parent"."Value1" IS NULL AND t2."Value1" IS NULL)
	)

