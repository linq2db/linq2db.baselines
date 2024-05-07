﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 1000
DECLARE @Value1 Int32
SET     @Value1 = 1000

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
DECLARE @ParentID Int32
SET     @ParentID = 1001
DECLARE @Value1 Int32
SET     @Value1 = 1001

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
DECLARE @ParentID Int32
SET     @ParentID = 1002
DECLARE @Value1 Int32
SET     @Value1 = 1002

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
DECLARE @ParentID Int32
SET     @ParentID = 1003
DECLARE @Value1 Int32
SET     @Value1 = 1003

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
DECLARE @ParentID Int32
SET     @ParentID = 1004
DECLARE @Value1 Int32
SET     @Value1 = 1004

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
DECLARE @ParentID Int32
SET     @ParentID = 1005
DECLARE @Value1 Int32
SET     @Value1 = 1005

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
DECLARE @ParentID Int32
SET     @ParentID = 1006
DECLARE @Value1 Int32
SET     @Value1 = 1006

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
DECLARE @ParentID Int32
SET     @ParentID = 1007
DECLARE @Value1 Int32
SET     @Value1 = 1007

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
DECLARE @ParentID Int32
SET     @ParentID = 1008
DECLARE @Value1 Int32
SET     @Value1 = 1008

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
DECLARE @ParentID Int32
SET     @ParentID = 1009
DECLARE @Value1 Int32
SET     @Value1 = 1009

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
DECLARE @skip Int32
SET     @skip = 2

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
					t2."ParentID",
					t2."Value1"
				FROM
					(
						SELECT
							t1."ParentID",
							t1."Value1",
							ROWNUM as RN
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
							ROWNUM <= 7
					) t2
				WHERE
					t2.RN > :skip
			) t3
		WHERE
			"Parent"."ParentID" = t3."ParentID" AND ("Parent"."Value1" = t3."Value1" OR "Parent"."Value1" IS NULL AND t3."Value1" IS NULL)
	)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" >= 1000
ORDER BY
	p."ParentID"

