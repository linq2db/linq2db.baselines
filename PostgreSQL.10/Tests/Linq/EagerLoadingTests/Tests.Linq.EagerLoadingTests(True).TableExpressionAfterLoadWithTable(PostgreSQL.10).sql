-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 10

INSERT INTO "LoadAsTableUser"
(
	"Id"
)
VALUES
(
	:Id
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @UserId Integer -- Int32
SET     @UserId = 10
DECLARE @Age Integer -- Int32
SET     @Age = 18

INSERT INTO "LoadAsTableUserDetails"
(
	"UserId",
	"Age"
)
VALUES
(
	:UserId,
	:Age
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	"a_Details"."UserId",
	"a_Details"."Age"
FROM
	"LoadAsTableUser" t1
		LEFT JOIN "LoadAsTableUserDetails" "a_Details" ON t1."Id" = "a_Details"."UserId"

