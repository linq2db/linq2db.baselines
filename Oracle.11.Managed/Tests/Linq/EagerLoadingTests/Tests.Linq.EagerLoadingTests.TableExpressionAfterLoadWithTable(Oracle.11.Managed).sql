BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 10

INSERT INTO "UserIssue3128"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @UserId Int32
SET     @UserId = 10
DECLARE @Age Int32
SET     @Age = 18

INSERT INTO "UserDetailsIssue3128"
(
	"UserId",
	"Age"
)
VALUES
(
	:UserId,
	:Age
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	a_Details."UserId",
	a_Details."Age"
FROM
	"UserIssue3128" t1
		LEFT JOIN "UserDetailsIssue3128" a_Details ON t1."Id" = a_Details."UserId"

