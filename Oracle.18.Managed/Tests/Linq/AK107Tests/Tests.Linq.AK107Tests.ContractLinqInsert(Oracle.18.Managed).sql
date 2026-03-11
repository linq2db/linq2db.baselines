-- Oracle.18.Managed Oracle.Managed Oracle12
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

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ContractSequence Int64
SET     @ContractSequence = 0
DECLARE @Id Int64
SET     @Id = 1

INSERT INTO "t_test_user_contract"
(
	"user_contract_id",
	"user_id",
	"contract_no",
	"name"
)
VALUES
(
	:ContractSequence,
	:Id,
	1,
	'contract'
)

