-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Type Integer(4) -- Int32
SET     @Type = 1
DECLARE @Name_First VarChar(4) -- String
SET     @Name_First = 'John'
DECLARE @Name_Second VarChar(3) -- String
SET     @Name_Second = 'Doe'

INSERT INTO "CalcSubtypeTable"
(
	"Id",
	"Type",
	"Name_First",
	"Name_Second"
)
VALUES
(
	@Id,
	@Type,
	@Name_First,
	@Name_Second
)

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Type",
	"t1"."Name_First",
	"t1"."Name_Second",
	Coalesce("t1"."Name_First", '') || ' ' || Coalesce("t1"."Name_Second", '')
FROM
	"CalcSubtypeTable" "t1"
FETCH NEXT 2 ROWS ONLY

