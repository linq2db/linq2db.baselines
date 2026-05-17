-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"TestMerge1" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
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
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Field1 Integer(4) -- Int32
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
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer(4) -- Int32
SET     @Field2 = 3
DECLARE @Field4 Integer(4) -- Int32
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
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Field1 Integer(4) -- Int32
SET     @Field1 = 5
DECLARE @Field2 Integer(4) -- Int32
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
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"TestMerge2" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer(4) -- Int32
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
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Field1 Integer(4) -- Int32
SET     @Field1 = 5
DECLARE @Field2 Integer(4) -- Int32
SET     @Field2 = 7
DECLARE @Field4 Integer(4) -- Int32
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
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @Field1 Integer(4) -- Int32
SET     @Field1 = 10
DECLARE @Field2 Integer(4) -- Int32
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
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Integer(4) -- Int32
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
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Val2 Integer(4) -- Int32
SET     @Val2 = 2
DECLARE @Val5 Integer(4) -- Int32
SET     @Val5 = 5
DECLARE @Val1 Integer(4) -- Int32
SET     @Val1 = 1
DECLARE @Val3 Integer(4) -- Int32
SET     @Val3 = 3

MERGE INTO "TestMerge1" "Target"
USING (
	SELECT
		"t1"."Id",
		"t1"."Field1",
		CAST(@Val2 AS Int) as "Field7"
	FROM
		"TestMerge2" "t1"
	WHERE
		"t1"."Id" <> @Val5
) "Source"
(
	"Id",
	"Field1",
	"Field7"
)
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED AND "Source"."Field7" = @Val1 + "Source"."Id" THEN
INSERT
(
	"Id",
	"Field1"
)
VALUES
(
	"Source"."Id" + @Val5,
	"Source"."Field1"
)

WHEN MATCHED AND "Source"."Id" = @Val3 THEN
UPDATE
SET
	"Field4" = @Val5
WHEN MATCHED AND "Target"."Field3" <> CAST(@Val2 AS Int) OR "Target"."Field3" IS NULL THEN DELETE

