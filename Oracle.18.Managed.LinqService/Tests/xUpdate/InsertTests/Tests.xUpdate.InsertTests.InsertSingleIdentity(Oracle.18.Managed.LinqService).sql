BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

DELETE FROM
	"TestIdentity" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "TestIdentity" VALUES (DEFAULT)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

DELETE FROM
	"TestIdentity" t1

