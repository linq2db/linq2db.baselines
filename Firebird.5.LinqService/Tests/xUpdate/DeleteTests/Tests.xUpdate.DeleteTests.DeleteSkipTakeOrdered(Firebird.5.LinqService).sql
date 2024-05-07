﻿BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"Parent" "c_1"
WHERE
	"c_1"."ParentID" >= 1000

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1000
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1000

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1002
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1002

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1003
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1003

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1004
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1004

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1005
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1005

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1006
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1006

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1007
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1007

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1008
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1008

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1009
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1009

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 2
DECLARE @take Integer -- Int32
SET     @take = 5

DELETE FROM
	"Parent" "x"
WHERE
	"x"."ParentID" > 1000
ORDER BY
	"x"."ParentID" DESC
ROWS @skip + 1 TO @skip + @take

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" >= 1000
ORDER BY
	"p"."ParentID"

BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"Parent" "c_1"
WHERE
	"c_1"."ParentID" >= 1000

