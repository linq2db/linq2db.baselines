﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'John',
	'Limonadovy',
	'M'
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Person" c_1
WHERE
	c_1."LastName" = 'Limonadovy'

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

UPDATE
	"Person" c_1
SET
	"FirstName" = 'Johnny'
WHERE
	c_1."LastName" = 'Limonadovy'

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Person" c_1
WHERE
	c_1."FirstName" = 'Johnny' AND c_1."LastName" = 'Limonadovy'

