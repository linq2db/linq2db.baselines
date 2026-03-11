-- Oracle.11.Managed Oracle11

DELETE FROM
	"TestIdentity" t1

-- Oracle.11.Managed Oracle11
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "TestIdentity" VALUES (DEFAULT)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

-- Oracle.11.Managed Oracle11

DELETE FROM
	"TestIdentity" t1

