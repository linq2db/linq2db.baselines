﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

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
-- PostgreSQL.18 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" c_1
WHERE
	c_1."LastName" = 'Limonadovy'

BeforeExecute
-- PostgreSQL.18 PostgreSQL

UPDATE
	"Person"
SET
	"FirstName" = 'Johnny'
WHERE
	"Person"."LastName" = 'Limonadovy'

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Person" c_1
WHERE
	c_1."FirstName" = 'Johnny' AND c_1."LastName" = 'Limonadovy'

