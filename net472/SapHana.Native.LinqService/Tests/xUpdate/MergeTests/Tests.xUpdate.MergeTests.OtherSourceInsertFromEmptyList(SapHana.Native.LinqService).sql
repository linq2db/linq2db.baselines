﻿BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"TestMerge1" "t1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Field1  -- Int32
SET     @Field1 = NULL
DECLARE @Field2  -- Int32
SET     @Field2 = NULL
DECLARE @Field4  -- Int32
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
	:"Id",
	:"Field1",
	:"Field2",
	:"Field4"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Field1  -- Int32
SET     @Field1 = 2
DECLARE @Field2  -- Int32
SET     @Field2 = NULL
DECLARE @Field4  -- Int32
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
	:"Id",
	:"Field1",
	:"Field2",
	:"Field4"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Field1  -- Int32
SET     @Field1 = NULL
DECLARE @Field2  -- Int32
SET     @Field2 = 3
DECLARE @Field4  -- Int32
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
	:"Id",
	:"Field1",
	:"Field2",
	:"Field4"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Field1  -- Int32
SET     @Field1 = 5
DECLARE @Field2  -- Int32
SET     @Field2 = 6
DECLARE @Field4  -- Int32
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
	:"Id",
	:"Field1",
	:"Field2",
	:"Field4"
)

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"TestMerge2" "t1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Field1  -- Int32
SET     @Field1 = NULL
DECLARE @Field2  -- Int32
SET     @Field2 = 3
DECLARE @Field4  -- Int32
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
	:"Id",
	:"Field1",
	:"Field2",
	:"Field4"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Field1  -- Int32
SET     @Field1 = 5
DECLARE @Field2  -- Int32
SET     @Field2 = 7
DECLARE @Field4  -- Int32
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
	:"Id",
	:"Field1",
	:"Field2",
	:"Field4"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Field1  -- Int32
SET     @Field1 = 10
DECLARE @Field2  -- Int32
SET     @Field2 = 4
DECLARE @Field4  -- Int32
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
	:"Id",
	:"Field1",
	:"Field2",
	:"Field4"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Field1  -- Int32
SET     @Field1 = NULL
DECLARE @Field2  -- Int32
SET     @Field2 = NULL
DECLARE @Field4  -- Int32
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
	:"Id",
	:"Field1",
	:"Field2",
	:"Field4"
)

BeforeExecute
-- SapHana.Native SapHana

MERGE INTO "TestMerge1" "Target"
USING (
	SELECT NULL "OtherId", NULL "OtherField1", NULL "OtherField5", NULL "OtherField2", NULL "OtherField4", NULL "OtherField3"
	FROM DUMMY	WHERE 1 = 0
)
 "Source"
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

BeforeExecute
-- SapHana.Native SapHana

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

