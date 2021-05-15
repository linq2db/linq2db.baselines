﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"Person" t1
WHERE
	Lower(t1."FirstName") LIKE 'insert14%' ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert14' || (
		SELECT
			p."FirstName"
		FROM
			"Person" p
		WHERE
			p."PersonID" = 1 AND ROWNUM <= :take
	),
	'Shepard',
	'M'
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	Lower(p."FirstName") LIKE 'insert14%' ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"Person" t1
WHERE
	Lower(t1."FirstName") LIKE 'insert14%' ESCAPE '~'

