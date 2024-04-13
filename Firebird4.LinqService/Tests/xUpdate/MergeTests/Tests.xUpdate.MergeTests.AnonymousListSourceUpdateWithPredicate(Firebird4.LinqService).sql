﻿BeforeExecute
-- Firebird4 Firebird

DELETE FROM
	"TestMerge1" "t1"

BeforeExecute
-- Firebird4 Firebird
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
-- Firebird4 Firebird
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
-- Firebird4 Firebird
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
-- Firebird4 Firebird
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
-- Firebird4 Firebird

DELETE FROM
	"TestMerge2" "t1"

BeforeExecute
-- Firebird4 Firebird
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
-- Firebird4 Firebird
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
-- Firebird4 Firebird
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
-- Firebird4 Firebird
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
-- Firebird4 Firebird

SELECT
	"t1"."Id",
	"t1"."Field1",
	"t1"."Field2",
	"t1"."Field3",
	"t1"."Field4",
	"t1"."Field5"
FROM
	"TestMerge2" "t1"

BeforeExecute
-- Firebird4 Firebird

MERGE INTO "TestMerge1" "Target"
USING (
	SELECT 3 AS "source_Key", NULL AS "source_Field01", 3 AS "source_Field02", NULL AS "source_Field03", NULL AS "source_Field04", NULL AS "source_Field05" FROM rdb$database
	UNION ALL
	SELECT 4, 5, 7, NULL, 214, NULL FROM rdb$database
	UNION ALL
	SELECT 5, 10, 4, NULL, NULL, NULL FROM rdb$database
	UNION ALL
	SELECT 6, NULL, NULL, NULL, 216, NULL FROM rdb$database) "Source"
(
	"source_Key",
	"source_Field01",
	"source_Field02",
	"source_Field03",
	"source_Field04",
	"source_Field05"
)
ON ("Target"."Id" = "Source"."source_Key")

WHEN MATCHED AND "Source"."source_Field04" = 214 THEN
UPDATE
SET
	"Field1" = "Source"."source_Field01",
	"Field2" = "Source"."source_Field02",
	"Field3" = "Source"."source_Field03",
	"Field4" = "Source"."source_Field04",
	"Field5" = "Source"."source_Field05"

BeforeExecute
-- Firebird4 Firebird

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

