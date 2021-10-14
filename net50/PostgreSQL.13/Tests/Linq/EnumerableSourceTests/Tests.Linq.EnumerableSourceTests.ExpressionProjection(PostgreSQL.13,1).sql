﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 3

SELECT
	n."FirstName",
	n."PersonID"
FROM
	"Person" p
		INNER JOIN (VALUES
			('Janet',:ID), ('Doe',:ID_1)
		) n("FirstName", "PersonID") ON p."PersonID" = n."PersonID"

