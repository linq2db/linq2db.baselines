BeforeExecute
BeginTransaction
BeforeExecute
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

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ContractNo Int64
SET     @ContractNo = 1
DECLARE @Name Varchar2(8) -- String
SET     @Name = 'contract'

INSERT INTO "t_test_user_contract"
(
	"user_contract_id",
	"user_id",
	"contract_no",
	"name"
)
SELECT
	"sq_test_user_contract".nextval,
	t1."user_id",
	:ContractNo,
	:Name
FROM
	"t_test_user" t1

