-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Customer_Name VarChar(5) -- String
SET     @Customer_Name = 'name1'
DECLARE @CustomerOther_Name VarChar(5) -- String
SET     @CustomerOther_Name = 'name2'

INSERT INTO "Issue5266Table"
(
	"Id",
	"child1_name",
	"child2_name"
)
VALUES
(
	@Id,
	@Customer_Name,
	@CustomerOther_Name
)

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."child1_name",
	"t1"."child2_name"
FROM
	"Issue5266Table" "t1"
FETCH NEXT 2 ROWS ONLY

