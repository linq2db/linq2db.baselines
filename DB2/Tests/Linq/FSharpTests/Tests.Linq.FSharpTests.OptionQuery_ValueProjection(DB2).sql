-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(1) -- String
SET     @Name = 'a'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 5

INSERT INTO "OptRow"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	@Id,
	@Name,
	@Age
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Name VarChar -- String
SET     @Name = NULL
DECLARE @Age Integer -- Int32
SET     @Age = NULL

INSERT INTO "OptRow"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	@Id,
	@Name,
	@Age
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Name VarChar(1) -- String
SET     @Name = 'b'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 7

INSERT INTO "OptRow"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	@Id,
	@Name,
	@Age
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."Name"
FROM
	"OptRow" "x"
WHERE
	"x"."Name" IS NOT NULL

