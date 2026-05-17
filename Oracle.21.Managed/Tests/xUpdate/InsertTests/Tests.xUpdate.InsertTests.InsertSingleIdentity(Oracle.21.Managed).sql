-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	"TestIdentity" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "TestIdentity" VALUES (DEFAULT)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	"TestIdentity" t1

