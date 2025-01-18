﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Type  -- Int32
SET     @Type = 1
DECLARE @ChildId  -- Int32
SET     @ChildId = 2
DECLARE @Name_First NVarChar(5) -- String
SET     @Name_First = 'First'
DECLARE @Name_Second NVarChar(6) -- String
SET     @Name_Second = 'Second'

INSERT INTO "Base"
(
	"Id",
	"Type",
	"Test_ChildId",
	"Name_First",
	"Name_Second"
)
VALUES
(
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Type",
	"t1"."Id",
	"t1"."Test_ChildId",
	"t1"."Name_First",
	"t1"."Name_Second"
FROM
	"Base" "t1"
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Type  -- Int32
SET     @Type = 1
DECLARE @ChildId  -- Int32
SET     @ChildId = 2
DECLARE @Name_First NVarChar(6) -- String
SET     @Name_First = 'First1'
DECLARE @Name_Second NVarChar(6) -- String
SET     @Name_Second = 'Second'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	"Base" "t1"
SET
	"Type" = ?,
	"Test_ChildId" = ?,
	"Name_First" = ?,
	"Name_Second" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Type",
	"t1"."Id",
	"t1"."Test_ChildId",
	"t1"."Name_First",
	"t1"."Name_Second"
FROM
	"Base" "t1"
LIMIT 2

