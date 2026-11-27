-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Tommy'

INSERT INTO "SkipOnInsertNulls"
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
	"SkipOnInsertNulls" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

