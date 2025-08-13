BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = 10
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Issue681Table4"@XE
(
	"Value"
)
VALUES
(
	:Value
)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

