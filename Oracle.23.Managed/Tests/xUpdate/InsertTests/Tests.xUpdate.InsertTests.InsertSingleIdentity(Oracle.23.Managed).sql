-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"TestIdentity" t1

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "TestIdentity" VALUES (DEFAULT)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"TestIdentity" t1

