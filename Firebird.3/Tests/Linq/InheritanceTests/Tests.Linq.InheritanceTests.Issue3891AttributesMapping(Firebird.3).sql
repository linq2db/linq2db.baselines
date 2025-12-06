-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @ChildId Integer -- Int32
SET     @ChildId = 2
DECLARE @Name_First VarChar(5) -- String
SET     @Name_First = 'First'
DECLARE @Name_Second VarChar(6) -- String
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
	@Id,
	@Type,
	@ChildId,
	@Name_First,
	@Name_Second
)

-- Firebird.3 Firebird3

SELECT
	"t1"."Type",
	"t1"."Id",
	"t1"."Test_ChildId",
	"t1"."Name_First",
	"t1"."Name_Second"
FROM
	"Base" "t1"
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @ChildId Integer -- Int32
SET     @ChildId = 2
DECLARE @Name_First VarChar(6) -- String
SET     @Name_First = 'First1'
DECLARE @Name_Second VarChar(6) -- String
SET     @Name_Second = 'Second'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"Base" "t1"
SET
	"Type" = CAST(@Type AS Int),
	"Test_ChildId" = CAST(@ChildId AS Int),
	"Name_First" = CAST(@Name_First AS VARCHAR(6)),
	"Name_Second" = CAST(@Name_Second AS VARCHAR(6))
WHERE
	"t1"."Id" = @Id

-- Firebird.3 Firebird3

SELECT
	"t1"."Type",
	"t1"."Id",
	"t1"."Test_ChildId",
	"t1"."Name_First",
	"t1"."Name_Second"
FROM
	"Base" "t1"
FETCH NEXT 2 ROWS ONLY

