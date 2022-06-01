BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

DROP SEQUENCE "PersonSeq"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "PersonSeq" MINVALUE 1 START WITH 5

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'John',
	'Shepard',
	'M'
)
RETURNING 
	"PersonID" INTO :IDENTITY_PARAMETER

