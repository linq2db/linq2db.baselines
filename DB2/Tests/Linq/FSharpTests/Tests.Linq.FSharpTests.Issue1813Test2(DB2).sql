-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'name1'

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
SET     @Name = 'name2'

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
	"m_1"."Id",
	"d"."Id",
	"d"."Text"
FROM
	"Names" "m_1"
		INNER JOIN "Addresses" "d" ON "m_1"."Id" = "d"."Id"
ORDER BY
	"m_1"."Id"

-- DB2 DB2.LUW DB2LUW

SELECT
	"after_1"."Id",
	"after_1"."Name"
FROM
	"Names" "after_1"
ORDER BY
	"after_1"."Id"

