﻿BeforeExecute
-- Firebird.4 Firebird4

DELETE FROM
	"TestMerge1" "t1"

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@Field1 AS Int),
	CAST(@Field2 AS Int),
	CAST(@Field4 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Field1 Integer -- Int32
SET     @Field1 = 2
DECLARE @Field2 Integer -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@Field1 AS Int),
	CAST(@Field2 AS Int),
	CAST(@Field4 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer -- Int32
SET     @Field2 = 3
DECLARE @Field4 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@Field1 AS Int),
	CAST(@Field2 AS Int),
	CAST(@Field4 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Field1 Integer -- Int32
SET     @Field1 = 5
DECLARE @Field2 Integer -- Int32
SET     @Field2 = 6
DECLARE @Field4 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@Field1 AS Int),
	CAST(@Field2 AS Int),
	CAST(@Field4 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4

DELETE FROM
	"TestMerge2" "t1"

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer -- Int32
SET     @Field2 = 3
DECLARE @Field4 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@Field1 AS Int),
	CAST(@Field2 AS Int),
	CAST(@Field4 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Field1 Integer -- Int32
SET     @Field1 = 5
DECLARE @Field2 Integer -- Int32
SET     @Field2 = 7
DECLARE @Field4 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@Field1 AS Int),
	CAST(@Field2 AS Int),
	CAST(@Field4 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Field1 Integer -- Int32
SET     @Field1 = 10
DECLARE @Field2 Integer -- Int32
SET     @Field2 = 4
DECLARE @Field4 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@Field1 AS Int),
	CAST(@Field2 AS Int),
	CAST(@Field4 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@Field1 AS Int),
	CAST(@Field2 AS Int),
	CAST(@Field4 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4

MERGE INTO "TestMerge1" "Target"
USING (
	SELECT
		"t1"."Id" as "source_Id",
		"t1"."Field5" as "source_Field5",
		"t1"."Field4" as "source_Field4",
		"t1"."Field3" as "source_Field3",
		"t1"."Field2" as "source_Field2",
		"t1"."Field1" as "source_Field1"
	FROM
		"TestMerge2" "t1"
) "Source"
(
	"source_Id",
	"source_Field5",
	"source_Field4",
	"source_Field3",
	"source_Field2",
	"source_Field1"
)
ON ("Target"."Id" = "Source"."source_Id")

WHEN MATCHED AND "Source"."source_Id" = 3 THEN
UPDATE
SET
	"Field1" = "Target"."Field1" + "Source"."source_Field5",
	"Field2" = "Target"."Field2" + "Source"."source_Field4",
	"Field3" = "Target"."Field3" + "Source"."source_Field3",
	"Field4" = "Target"."Field4" + "Source"."source_Field2",
	"Field5" = "Target"."Field5" + "Source"."source_Field1"

BeforeExecute
-- Firebird.4 Firebird4

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

