-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(7) -- String
SET     @Name = 'address'

INSERT INTO "Names"
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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'other'

INSERT INTO "Names"
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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Text VarChar(7) -- String
SET     @Text = 'address'

INSERT INTO "Addresses"
(
	"Id",
	"Text"
)
VALUES
(
	@Id,
	@Text
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"after_1"."Name",
	"arg3"."Id",
	"arg3"."Text"
FROM
	"Names" "after_1"
		LEFT JOIN "Addresses" "arg3" ON "arg3"."Text" = "after_1"."Name" OR "arg3"."Text" IS NULL AND "after_1"."Name" IS NULL

