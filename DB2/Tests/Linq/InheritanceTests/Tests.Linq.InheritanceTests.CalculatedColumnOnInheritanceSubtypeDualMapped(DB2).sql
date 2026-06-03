-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Type Integer(4) -- Int32
SET     @Type = 1
DECLARE @Stored VarChar(4) -- String
SET     @Stored = 'John'

INSERT INTO "CalcSubtypeDual"
(
	"Id",
	"Type",
	"Stored"
)
VALUES
(
	@Id,
	@Type,
	@Stored
)

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Type",
	"t1"."Id",
	"t1"."Stored",
	Coalesce("t1"."Stored", '') || '!'
FROM
	"CalcSubtypeDual" "t1"
FETCH NEXT 2 ROWS ONLY

