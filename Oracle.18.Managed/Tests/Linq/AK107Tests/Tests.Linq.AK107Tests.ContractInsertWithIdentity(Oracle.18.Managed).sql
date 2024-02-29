BeforeExecute
BeginTransaction
BeforeExecute
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

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @UserId Int64
SET     @UserId = 1
DECLARE @ContractNo Int64
SET     @ContractNo = 1
DECLARE @Name Varchar2(8) -- String
SET     @Name = 'contract'
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
	:UserId,
	:ContractNo,
	:Name
)
RETURNING 
	"user_contract_id" INTO :IDENTITY_PARAMETER

