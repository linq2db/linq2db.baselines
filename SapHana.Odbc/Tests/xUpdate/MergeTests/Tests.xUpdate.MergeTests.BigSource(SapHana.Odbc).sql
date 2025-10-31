-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"TestMerge1" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Field1 Int -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Int -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Int -- Int32
SET     @Field4 = NULL

INSERT INTO "TestMerge1"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Field1 Int -- Int32
SET     @Field1 = 2
DECLARE @Field2 Int -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Int -- Int32
SET     @Field4 = NULL

INSERT INTO "TestMerge1"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Field1 Int -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Int -- Int32
SET     @Field2 = 3
DECLARE @Field4 Int -- Int32
SET     @Field4 = 203

INSERT INTO "TestMerge1"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Field1 Int -- Int32
SET     @Field1 = 5
DECLARE @Field2 Int -- Int32
SET     @Field2 = 6
DECLARE @Field4 Int -- Int32
SET     @Field4 = NULL

INSERT INTO "TestMerge1"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"TestMerge2" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Field1 Int -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Int -- Int32
SET     @Field2 = 3
DECLARE @Field4 Int -- Int32
SET     @Field4 = NULL

INSERT INTO "TestMerge2"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Field1 Int -- Int32
SET     @Field1 = 5
DECLARE @Field2 Int -- Int32
SET     @Field2 = 7
DECLARE @Field4 Int -- Int32
SET     @Field4 = 214

INSERT INTO "TestMerge2"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Field1 Int -- Int32
SET     @Field1 = 10
DECLARE @Field2 Int -- Int32
SET     @Field2 = 4
DECLARE @Field4 Int -- Int32
SET     @Field4 = NULL

INSERT INTO "TestMerge2"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Field1 Int -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Int -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Int -- Int32
SET     @Field4 = 216

INSERT INTO "TestMerge2"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

MERGE INTO "TestMerge1" "Target"
USING (
	SELECT 5 AS "Id", 6 AS "Field1", 7 AS "Field2", 9 AS "Field4" FROM DUMMY
	UNION ALL
	SELECT 6, 7, 8, 10 FROM DUMMY
	UNION ALL
	SELECT 7, 8, 9, 11 FROM DUMMY
	UNION ALL
	SELECT 8, 9, 10, 12 FROM DUMMY
	UNION ALL
	SELECT 9, 10, 11, 13 FROM DUMMY
	UNION ALL
	SELECT 10, 11, 12, 14 FROM DUMMY
	UNION ALL
	SELECT 11, 12, 13, 15 FROM DUMMY
	UNION ALL
	SELECT 12, 13, 14, 16 FROM DUMMY
	UNION ALL
	SELECT 13, 14, 15, 17 FROM DUMMY
	UNION ALL
	SELECT 14, 15, 16, 18 FROM DUMMY
	UNION ALL
	SELECT 15, 16, 17, 19 FROM DUMMY
	UNION ALL
	SELECT 16, 17, 18, 20 FROM DUMMY
	UNION ALL
	SELECT 17, 18, 19, 21 FROM DUMMY
	UNION ALL
	SELECT 18, 19, 20, 22 FROM DUMMY
	UNION ALL
	SELECT 19, 20, 21, 23 FROM DUMMY
	UNION ALL
	SELECT 20, 21, 22, 24 FROM DUMMY
	UNION ALL
	SELECT 21, 22, 23, 25 FROM DUMMY
	UNION ALL
	SELECT 22, 23, 24, 26 FROM DUMMY
	UNION ALL
	SELECT 23, 24, 25, 27 FROM DUMMY
	UNION ALL
	SELECT 24, 25, 26, 28 FROM DUMMY
	UNION ALL
	SELECT 25, 26, 27, 29 FROM DUMMY
	UNION ALL
	SELECT 26, 27, 28, 30 FROM DUMMY
	UNION ALL
	SELECT 27, 28, 29, 31 FROM DUMMY
	UNION ALL
	SELECT 28, 29, 30, 32 FROM DUMMY
	UNION ALL
	SELECT 29, 30, 31, 33 FROM DUMMY
	UNION ALL
	SELECT 30, 31, 32, 34 FROM DUMMY
	UNION ALL
	SELECT 31, 32, 33, 35 FROM DUMMY
	UNION ALL
	SELECT 32, 33, 34, 36 FROM DUMMY
	UNION ALL
	SELECT 33, 34, 35, 37 FROM DUMMY
	UNION ALL
	SELECT 34, 35, 36, 38 FROM DUMMY
	UNION ALL
	SELECT 35, 36, 37, 39 FROM DUMMY
	UNION ALL
	SELECT 36, 37, 38, 40 FROM DUMMY
	UNION ALL
	SELECT 37, 38, 39, 41 FROM DUMMY
	UNION ALL
	SELECT 38, 39, 40, 42 FROM DUMMY
	UNION ALL
	SELECT 39, 40, 41, 43 FROM DUMMY
	UNION ALL
	SELECT 40, 41, 42, 44 FROM DUMMY
	UNION ALL
	SELECT 41, 42, 43, 45 FROM DUMMY
	UNION ALL
	SELECT 42, 43, 44, 46 FROM DUMMY
	UNION ALL
	SELECT 43, 44, 45, 47 FROM DUMMY
	UNION ALL
	SELECT 44, 45, 46, 48 FROM DUMMY
	UNION ALL
	SELECT 45, 46, 47, 49 FROM DUMMY
	UNION ALL
	SELECT 46, 47, 48, 50 FROM DUMMY
	UNION ALL
	SELECT 47, 48, 49, 51 FROM DUMMY
	UNION ALL
	SELECT 48, 49, 50, 52 FROM DUMMY
	UNION ALL
	SELECT 49, 50, 51, 53 FROM DUMMY
	UNION ALL
	SELECT 50, 51, 52, 54 FROM DUMMY
	UNION ALL
	SELECT 51, 52, 53, 55 FROM DUMMY
	UNION ALL
	SELECT 52, 53, 54, 56 FROM DUMMY
	UNION ALL
	SELECT 53, 54, 55, 57 FROM DUMMY
	UNION ALL
	SELECT 54, 55, 56, 58 FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	"Source"."Id",
	"Source"."Field1",
	"Source"."Field2",
	"Source"."Field4"
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Field1",
	"t1"."Field2",
	"t1"."Field3",
	"t1"."Field4",
	"t1"."Field5"
FROM
	"TestMerge1" "t1"
ORDER BY
	"t1"."Id"

