-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'user'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "t_test_user"
(
	"user_id",
	"name"
)
VALUES
(
	"c##sequence_schema"."sq_test_user".nextval,
	:Name
)
RETURNING 
	"user_id" INTO :IDENTITY_PARAMETER

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int64
SET     @Id = 1
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "t_test_user_contract"
(
	"user_contract_id",
	"user_id",
	"contract_no",
	"name"
)
VALUES
(
	"sq_test_user_contract".nextval,
	:Id,
	1,
	'contract'
)
RETURNING 
	"user_contract_id" INTO :IDENTITY_PARAMETER

