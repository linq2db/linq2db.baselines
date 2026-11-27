-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10

INSERT INTO "LoadAsTableUser"
(
	"Id"
)
VALUES
(
	@Id
)

-- DB2 DB2.LUW DB2LUW
DECLARE @UserId Integer(4) -- Int32
SET     @UserId = 10
DECLARE @Age Integer(4) -- Int32
SET     @Age = 18

INSERT INTO "LoadAsTableUserDetails"
(
	"UserId",
	"Age"
)
VALUES
(
	@UserId,
	@Age
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"a_Details"."UserId",
	"a_Details"."Age"
FROM
	"LoadAsTableUser" "t1"
		LEFT JOIN "LoadAsTableUserDetails" "a_Details" ON "t1"."Id" = "a_Details"."UserId"

