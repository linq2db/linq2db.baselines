BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10

INSERT INTO "UserIssue3128"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @UserId Integer(4) -- Int32
SET     @UserId = 10
DECLARE @Age Integer(4) -- Int32
SET     @Age = 18

INSERT INTO "UserDetailsIssue3128"
(
	"UserId",
	"Age"
)
VALUES
(
	@UserId,
	@Age
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."Id",
	"a_Details"."UserId",
	"a_Details"."Age"
FROM
	"UserIssue3128" "t1"
		LEFT JOIN "UserDetailsIssue3128" "a_Details" ON "t1"."Id" = "a_Details"."UserId"

