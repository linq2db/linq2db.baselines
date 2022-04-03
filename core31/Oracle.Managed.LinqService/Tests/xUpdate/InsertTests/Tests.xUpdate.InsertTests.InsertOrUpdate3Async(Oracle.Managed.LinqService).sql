BeforeExecute
-- Oracle.Managed Oracle12

DROP SEQUENCE "PersonSeq"

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE "PersonSeq" MINVALUE 1 START WITH 5

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	"Person" p
WHERE
	p."FirstName" = 'John' AND p."LastName" = 'Shepard'

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)
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

