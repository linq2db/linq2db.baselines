BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'user'

INSERT INTO "t_test_user"
(
	"user_id",
	"name"
)
VALUES
(
	"sq_test_user".nextval,
	:Name
)

