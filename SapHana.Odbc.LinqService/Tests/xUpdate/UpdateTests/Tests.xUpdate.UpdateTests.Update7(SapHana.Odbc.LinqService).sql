﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001
DECLARE @Value1  -- Int32
SET     @Value1 = 1

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	?,
	?
)

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = ? AND "p"."Value1" = 1

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @Value1  -- Int32
SET     @Value1 = 2
DECLARE @id  -- Int32
SET     @id = 1001

UPDATE
	"Parent" "p"
SET
	"Value1" = ?
WHERE
	"p"."ParentID" = ?

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = ? AND "p"."Value1" = 2

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @Value1  -- Int32
SET     @Value1 = 3
DECLARE @id  -- Int32
SET     @id = 1001

UPDATE
	"Parent" "p"
SET
	"Value1" = ?
WHERE
	"p"."ParentID" = ?

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = ? AND "p"."Value1" = 3

