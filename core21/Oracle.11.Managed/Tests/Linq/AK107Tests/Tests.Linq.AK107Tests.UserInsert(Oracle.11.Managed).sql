BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'user'

INSERT INTO "t_test_user"
(
	"user_id",
	"name"
)
VALUES
(
	"sequence_schema"."sq_test_user".nextval,
	:Name
)

