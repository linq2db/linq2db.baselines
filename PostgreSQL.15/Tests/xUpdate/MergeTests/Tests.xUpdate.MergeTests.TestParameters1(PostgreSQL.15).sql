﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"TestMerge1" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"TestMerge2" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
	:Id,
	:Field1,
	:Field2,
	:Field4
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Val2 Integer -- Int32
SET     @Val2 = 2
DECLARE @Val5 Integer -- Int32
SET     @Val5 = 5
DECLARE @Val4 Integer -- Int32
SET     @Val4 = 34
DECLARE @Val1 Integer -- Int32
SET     @Val1 = 1
DECLARE @Val3 Integer -- Int32
SET     @Val3 = 3
DECLARE @p Integer -- Int32
SET     @p = 125

MERGE INTO "TestMerge1" "Target"
USING (
	SELECT
		t1."Id" as "source_Id",
		t1."Field1" as "source_Field1",
		:Val2 as "source_Field7"
	FROM
		"TestMerge2" t1
	WHERE
		t1."Id" <> :Val5
) "Source"
(
	"source_Id",
	"source_Field1",
	"source_Field7"
)
ON ("Target"."Id" = "Source"."source_Id" OR "Target"."Id" = :Val4)

WHEN NOT MATCHED AND "Source"."source_Field7" = :Val1 + "Source"."source_Id" THEN
INSERT
(
	"Id",
	"Field1"
)
VALUES
(
	"Source"."source_Id" + :Val5,
	"Source"."source_Field1"
)

WHEN MATCHED AND "Source"."source_Id" = :Val3 THEN
UPDATE
SET
	"Field4" = :Val5
WHEN MATCHED AND "Target"."Field3" = :p THEN DELETE

