BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"TestIdentity" t1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "TestIdentity" VALUES (DEFAULT)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"TestIdentity" t1

