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
	SELECT 3 AS "OtherId", NULL AS "OtherField1", NULL AS "OtherField5", 3 AS "OtherField2", NULL AS "OtherField4", 113 AS "OtherField3" FROM DUMMY
	UNION ALL
	SELECT 4, 5, NULL, 7, 214, NULL FROM DUMMY
	UNION ALL
	SELECT 5, 10, 315, 4, NULL, NULL FROM DUMMY
	UNION ALL
	SELECT 6, NULL, 316, NULL, 216, 116 FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."OtherId")

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Field1",
	"Field2",
	"Field3",
	"Field4",
	"Field5"
)
VALUES
(
	"Source"."OtherId",
	"Source"."OtherField1",
	"Source"."OtherField5",
	"Source"."OtherField2",
	"Source"."OtherField4",
	"Source"."OtherField3"
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

