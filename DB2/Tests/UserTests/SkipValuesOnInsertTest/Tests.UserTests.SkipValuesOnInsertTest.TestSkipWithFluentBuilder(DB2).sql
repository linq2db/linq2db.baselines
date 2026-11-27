-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar -- String
SET     @Name = NULL

INSERT INTO "SkipOnInsertFluent"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"SkipOnInsertFluent" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

